GEOGRAPHIES_MAP = {
    'nation': {
        'parent': None,
        'children': 'regions, zctas, urban areas, cbsas',
        'descendants': 'regions, zctas, urban areas, cbsas, divisions, states, school districts, congressional districts, urban growth areas, state legislative districts, public use microdata areas, places, counties, voting districts, traffic analysis zones, county subdivisions, subminor civil divisions, census tracts, block groups, census blocks'
    },
    'regions': {
        'parent': 'nation',
        'children': 'divisions',
        'descendants': 'divisions, states, school districts, congressional districts, urban growth areas, state legislative districts, public use microdata areas, places, counties, voting districts, traffic analysis zones, county subdivisions, subminor civil divisions, census tracts, block groups, census blocks'
    },
    'zctas': {
        'parent': 'nation',
        'children': None,
        'descendants': None,
    },
    'urban areas': {
        'parent': 'nation',
        'children': None,
        'descendants': None,
    },
    'cbsas': {
        'parent': 'nation',
        'children': None,
        'descendants': None,
    },
    'divisions': {
        'parent': 'regions',
        'children': 'states',
        'descendants': 'states, school districts, congressional districts, urban growth areas, state legislative districts, public use microdata areas, places, counties, voting districts, traffic analysis zones, county subdivisions, subminor civil divisions, census tracts, block groups, census blocks'
    },
    'states': {
        'parent': 'divisions',
        'children': 'school districts, congressional districts, urban growth areas, state legislative districts, public use microdata areas, places, counties',
        'descendants': 'school districts, congressional districts, urban growth areas, state legislative districts, public use microdata areas, places, counties, voting districts, traffic analysis zones, county subdivisions, subminor civil divisions, census tracts, block groups, census blocks'
    },
    'school districts': {
        'parent': 'states',
        'children': None,
        'descendants': None,
    },
    'congressional districts': {
        'parent': 'states',
        'children': None,
        'descendants': None,
    },
    'urban growth areas': {
        'parent': 'states',
        'children': None,
        'descendants': None,
    },
    'state legislative districts': {
        'parent': 'states',
        'children': None,
        'descendants': None,
    },
    'public use microdata areas': {
        'parent': 'states',
        'children': None,
        'descendants': None,
    },
    'places': {
        'parent': 'states',
        'children': None,
        'descendants': None,
    },
    'counties': {
        'parent': 'states',
        'children': 'voting districts, traffic analysis zones, county subdivisions, census tracts',
        'descendants': 'voting districts, traffic analysis zones, county subdivisions, subminor civil divisions, census tracts, block groups, census blocks'
    },
    'voting districts': {
        'parent': 'counties',
        'children': None,
        'descendants': None,
    },
    'traffic analysis zones': {
        'parent': 'counties',
        'children': None,
        'descendants': None,
    },
    'county subdivisions': {
        'parent': 'counties',
        'children': 'subminor civil divisions',
        'descendants': 'subminor civil divisions',
    },
    'subminor civil divisions': {
        'parent': 'county subdivisions',
        'children': None,
        'descendants': None,
    },
    'census tracts': {
        'parent': 'counties',
        'children': 'block groups',
        'descendants': 'block groups, census blocks',
    },
    'block groups': {
        'parent': 'census tracts',
        'children': 'census blocks',
        'descendants': 'census blocks',
    },
    'census blocks': {
        'parent': 'block groups',
        'children': 'census blocks',
        'descendants': 'census blocks',
    },
}