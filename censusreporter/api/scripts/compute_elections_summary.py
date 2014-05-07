import sys

from sqlalchemy import func

from api.models import (Votes, VoteSummary, Municipality, Province, Ward,
                        District, Base)
from api.utils import get_session, _engine


def apply_votes_filters(query, election, ballot_type):
    '''
    Limits Votes query to only include records for the specified
    election and ballot type.
    '''
    return query.filter(Votes.ballot_type == ballot_type) \
                .filter(Votes.electoral_event == election)


def apply_geo_filters(query, geo_code, geo_level):
    '''
    Limits Votes query to only include records for the specified
    ward, municipality, district or province. If geo_level is 'country'
    the query is returned as is.
    '''
    try:
        if geo_level == 'country':
            return query

        field_name = {
            'ward': 'ward_code',
            'province': 'province_code',
            'municipality': 'municipality_code',
            'district': 'district_code',
        }[geo_level]
        return query.filter(getattr(Votes, field_name) == geo_code)

    except KeyError:
        raise ValueError('Invalid geo_level: %s' % geo_level)


if __name__ == '__main__':
    if len(sys.argv) != 2:
        raise ValueError("Requires 'electoral event' argument")
    election = sys.argv[1]

    Base.metadata.create_all(_engine, tables=[VoteSummary.__table__])

    session = get_session()

    try:
        total = (1 + session.query(Province).count() + session.query(District).count() + \
            session.query(Municipality).count() + session.query(Ward).count()) * 3
        counter = 0.0

        sys.stdout.write('COPY votesummary (geo_level, geo_code, electoral_event, party, '
                         'ballot_type, registered_voters, total_votes, mec7_votes, '
                         'valid_votes, spoilt_votes, average_voter_turnout) FROM stdin;\n')

        for geo_model in (None, Province, District, Municipality, Ward):
            if geo_model is None:
                level = 'country'
                codes = [('ZA', )]
            else:
                level = geo_model.level
                codes = session.query(geo_model.code).all()

            votes_by_party = session \
                    .query(Votes.party, func.sum(Votes.valid_votes).label('vote_sum')) \
                    .group_by(Votes.party)
            subquery = session \
                    .query(Votes.total_votes, Votes.spoilt_votes) \
                    .distinct(Votes.voting_district_code)

            for code in codes:
                code = code[0]
                votes_by_party_geo = apply_geo_filters(votes_by_party, code, level)
                subquery_geo = apply_geo_filters(subquery, code, level)

                sq = session \
                        .query(func.max(Votes.registered_voters).label('max_rv'),
                               func.max(Votes.total_votes).label('max_tv'),
                               func.max(Votes.mec7_votes).label('max_mv')) \
                        .group_by(Votes.voting_district_code) \
                        .filter(Votes.electoral_event == election)
                sq = apply_geo_filters(sq, code, level).subquery()
                registered_voters, total_votes, mec7_votes = session \
                        .query(func.sum(sq.c.max_rv),
                               func.sum(sq.c.max_tv),
                               func.sum(sq.c.max_mv)) \
                        .one()
                voter_turnout = round(float(total_votes + mec7_votes)
                                      / registered_voters * 100, 2)

                for ballot in ('WARD', 'PR', 'DC 40%'):
                    vbp = apply_votes_filters(votes_by_party_geo, election, ballot)
                    sq = apply_votes_filters(subquery_geo, election, ballot).subquery()
                    total_votes, spoilt_votes = \
                            session.query(func.sum(sq.c.total_votes),
                                          func.sum(sq.c.spoilt_votes)) \
                                   .one()
                    mec7 = mec7_votes if ballot == 'PR' else 0

                    for party, votes in vbp:
                        sys.stdout.write('%s\n' % '\t'.join(map(
                            str,
                            [level, code, election, party, ballot, registered_voters,
                             total_votes, mec7, votes, spoilt_votes, voter_turnout]
                        )))
                    counter += 1
                    sys.stderr.write('\r%d / %d' % (counter, total))
                    sys.stderr.flush()

        sys.stdout.write('\.\n')
        sys.stderr.write('\nDone\n')

    finally:
        session.close()
