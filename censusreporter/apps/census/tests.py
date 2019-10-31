from django.test import TestCase
from .views import GeographyDetailView

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

