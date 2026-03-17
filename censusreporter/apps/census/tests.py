from django.test import TestCase
from .views import GeographyDetailView
from .profile import _filter_comparison_item_levels

class ParseTestCase(TestCase):
    def setUp(self):
        self.view = GeographyDetailView()

    def test_parse_typical(self):
        (geoid,slug) = self.view.parse_fragment('16000US1714000-chicago-il')
        self.assertEqual(geoid,'16000US1714000')
        self.assertEqual(slug,'chicago-il')

    def test_parse_geoid(self):
        (geoid,slug) = self.view.parse_fragment('16000US1714000')
        self.assertEqual(geoid,'16000US1714000')
        self.assertEqual(slug,None)

    def test_parse_census_geoid(self):
        (geoid,slug) = self.view.parse_fragment('1600000US1714000')
        self.assertEqual(geoid,'16000US1714000')
        self.assertEqual(slug,None)

    def test_parse_vermont(self):
        (geoid,slug) = self.view.parse_fragment('61000US50ADD-addison-state-senate-district-vt')
        self.assertEqual(geoid,'61000US50ADD')
        self.assertEqual(slug,'addison-state-senate-district-vt')

    def test_parse_problem_geoid(self):
        (geoid,slug) = self.view.parse_fragment('61000US50E-O')
        self.assertEqual(geoid,'61000US50E-O')
        self.assertEqual(slug,None)

    def test_parse_problem_geoid_and_slug(self):
        (geoid,slug) = self.view.parse_fragment('61000US50E-O-essex-orleans-state-senate-district-vt')
        self.assertEqual(geoid,'61000US50E-O')
        self.assertEqual(slug,'essex-orleans-state-senate-district-vt')


class FilterTestCase(TestCase):
    def test_filter_comparison_item_levels_chicago(self):
        filtered = _filter_comparison_item_levels(CHICAGO_FILTER_TEST_DATA['parents'])
        self.assertEqual(len(filtered),5)
        self.assertEqual(filtered[0]['geoid'],"16000US1714000")
        self.assertEqual(filtered[1]['geoid'],"05000US17031")
        self.assertEqual(filtered[2]['geoid'],"31000US16980")
        self.assertEqual(filtered[3]['geoid'],"04000US17")
        self.assertEqual(filtered[4]['geoid'],"01000US")

    def test_filter_comparison_item_levels_tulsa(self):
        filtered = _filter_comparison_item_levels(TULSA_FILTER_TEST_DATA['parents'])
        self.assertEqual(len(filtered),5)
        self.assertEqual(filtered[0]['geoid'],"16000US4075000")
        self.assertEqual(filtered[1]['geoid'],"05000US40143")
        self.assertEqual(filtered[2]['geoid'],"31000US46140")
        self.assertEqual(filtered[3]['geoid'],"04000US40")
        self.assertEqual(filtered[4]['geoid'],"01000US")

CHICAGO_FILTER_TEST_DATA = {"parents": [
    {
    "coverage": 100,
    "display_name": "Chicago, IL",
    "geoid": "16000US1714000",
    "relation": "this",
    "sumlevel": "160"
    },
    {
    "coverage": 1.1341726,
    "display_name": "DuPage County, IL",
    "geoid": "05000US17043",
    "relation": "county",
    "sumlevel": "050"
    },
    {
    "coverage": 98.86583,
    "display_name": "Cook County, IL",
    "geoid": "05000US17031",
    "relation": "county",
    "sumlevel": "050"
    },
    {
    "coverage": 100,
    "display_name": "Chicago-Naperville-Elgin, IL-IN Metro Area",
    "geoid": "31000US16980",
    "relation": "CBSA",
    "sumlevel": "310"
    },
    {
    "coverage": 100,
    "display_name": "Illinois",
    "geoid": "04000US17",
    "relation": "state",
    "sumlevel": "040"
    },
    {
    "coverage": 100,
    "display_name": "United States",
    "geoid": "01000US",
    "relation": "nation",
    "sumlevel": "010"
    }
]}

TULSA_FILTER_TEST_DATA = {"parents": [
    {
    "coverage": 100,
    "display_name": "Tulsa, OK",
    "geoid": "16000US4075000",
    "relation": "this",
    "sumlevel": "160"
    },
    {
    "coverage": 0.066113375,
    "display_name": "Rogers County, OK",
    "geoid": "05000US40131",
    "relation": "county",
    "sumlevel": "050"
    },
    {
    "coverage": 5.3390484,
    "display_name": "Osage County, OK",
    "geoid": "05000US40113",
    "relation": "county",
    "sumlevel": "050"
    },
    {
    "coverage": 6.7297416,
    "display_name": "Wagoner County, OK",
    "geoid": "05000US40145",
    "relation": "county",
    "sumlevel": "050"
    },
    {
    "coverage": 87.8651,
    "display_name": "Tulsa County, OK",
    "geoid": "05000US40143",
    "relation": "county",
    "sumlevel": "050"
    },
    {
    "coverage": 100,
    "display_name": "Tulsa, OK Metro Area",
    "geoid": "31000US46140",
    "relation": "CBSA",
    "sumlevel": "310"
    },
    {
    "coverage": 100,
    "display_name": "Oklahoma",
    "geoid": "04000US40",
    "relation": "state",
    "sumlevel": "040"
    },
    {
    "coverage": 100,
    "display_name": "United States",
    "geoid": "01000US",
    "relation": "nation",
    "sumlevel": "010"
    }
]}
