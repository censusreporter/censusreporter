PROFILE_TEST = {
    "geography": {
        "sumlev": "060",
        "census_name": "Spokane",
        "pretty_name": "Spokane County, Washington",
        "stusab": "53",
        "total_population": "2345987",
        "land_area": "1298345",
        "census_release": "ACS 2011 1-year"
    },
    
    "demographics": {
        "age": {
            "percent_under_18": {
                "table_id": "B01001",
                "universe": "Total population",
                "name": "Under 18",
                "values": {
                    "geography": "28.2",
                    "county": None,
                    "state": "27.3",
                    "nation": "27.8"
                }
            },
            "percent_65_over": {
                "table_id": "B01001",
                "universe": "Total population",
                "name": "65 and over",
                "values": {
                    "geography": "13.1",
                    "county": None,
                    "state": "12.5",
                    "nation": "12.6"
                }
            }
        },
        "gender": {
            "percent_male": {
                "table_id": "B01001",
                "universe": "Total population",
                "name": "Male",
                "values": {
                    "geography": "48.1",
                    "county": None,
                    "state": "48.7",
                    "nation": "49.5"
                }
            },
            "percent_female": {
                "table_id": "B01001",
                "universe": "Total population",
                "name": "Female",
                "values": {
                    "geography": "51.9",
                    "county": None,
                    "state": "51.3",
                    "nation": "50.5"
                }
            }
        },
        "race": {
            "percent_white": {
                "table_id": "B02001",
                "universe": "Total population",
                "name": "White",
                "values": {
                    "geography": "87.5",
                    "county": None,
                    "state": "79.2",
                    "nation": "81.3"
                }
            },
            "percent_black": {
                "table_id": "B02001",
                "universe": "Total population",
                "name": "Black",
                "values": {
                    "geography": "12.3",
                    "county": None,
                    "state": "12.2",
                    "nation": "13.1"
                }
            },
            "percent_american_indian": {
                "table_id": "B02001",
                "universe": "Total population",
                "name": "Native",
                "values": {
                    "geography": "1.1",
                    "county": None,
                    "state": "1.5",
                    "nation": "1.3"
                }
            },
            "percent_asian": {
                "table_id": "B02001",
                "universe": "Total population",
                "name": "Asian",
                "values": {
                    "geography": "3.3",
                    "county": None,
                    "state": "3.8",
                    "nation": "3.6"
                }
            },
            "percent_islander": {
                "table_id": "B02001",
                "universe": "Total population",
                "name": "Islander",
                "values": {
                    "geography": "1.2",
                    "county": None,
                    "state": "1.9",
                    "nation": "1.7"
                }
            },
            "percent_other": {
                "table_id": "B02001",
                "universe": "Total population",
                "name": "Other race",
                "values": {
                    "geography": "1.7",
                    "county": None,
                    "state": "1.9",
                    "nation": "1.8"
                }
            },
            "percent_two_or_more": {
                "table_id": "B02001",
                "universe": "Total population",
                "name": "Two+ races",
                "values": {
                    "geography": "1.0",
                    "county": None,
                    "state": "0.8",
                    "nation": "0.9"
                }
            }
        },
        "ethnicity": {
            "percent_hispanic": {
                "table_id": "B03001",
                "universe": "Total population",
                "name": "Hispanic/Latino",
                "values": {
                    "geography": "11.5",
                    "county": None,
                    "state": "11.5",
                    "nation": "11.7"
                }
            }
        }
    },
    
    "economics": {
        "income": {
            "per_capita_income": {
                "table_id": "B19301",
                "universe": "Total population",
                "name": "Per capita income in past year",
                "values": {
                    "geography": "34982",
                    "county": None,
                    "state": "37482",
                    "nation": "36904"
                }
            },
            "median_household_income": {
                "table_id": "B19013",
                "name": "Median household income",
                "universe": "Households",
                "values": {
                    "geography": "41184",
                    "county": None,
                    "state": "42087",
                    "nation": "42113"
                }
            }
        },
        "poverty": {
            "percent_poverty": {
                "table_id": "B17001",
                "universe": "Population for whom poverty status is determined",
                "name": "People below poverty line",
                "values": {
                    "geography": "20.1",
                    "county": None,
                    "state": "19.8",
                    "nation": "21.6"
                }
            }
        }
    },

    "education": {
        "attainment": {
            "percent_high_school": {
                "table_id": "B15002",
                "universe": "Population 25 years and over",
                "name": "High school grad or higher",
                "values": {
                    "geography": "74.9",
                    "county": None,
                    "state": "77.3",
                    "nation": "76.3"
                }
            },
            "percent_college": {
                "table_id": "B15002",
                "universe": "Population 25 years and over",
                "name": "Bachelor's degree or higher",
                "values": {
                    "geography": "43.2",
                    "county": None,
                    "state": "47.2",
                    "nation": "39.7"
                }
            }
        }
    },
    
    "employment": {
        "travel_time": {
            "mean_travel_time": {
                "table_id": "B08006, B08013",
                "universe": "Workers 16 years and over",
                "name": "Mean travel time to work",
                "values": {
                    "geography": "27.6",
                    "county": None,
                    "state": "28.2",
                    "nation": "29.9"
                }
            }
        }
    },
    
    "families": {
        "households": {
            "number_households": {
                "table_id": "B11001",
                "universe": "Households",
                "name": "Number of households",
                "values": {
                    "geography": "43092",
                    "county": None,
                    "state": "576231",
                    "nation": "9834627"
                }
            },
            "persons_per_household": {
                "table_id": "B11001, B11002",
                "universe": "Households",
                "name": "Persons per household",
                "values": {
                    "geography": "3.2",
                    "county": None,
                    "state": "3.8",
                    "nation": "3.7"
                }
            }
        }
    },
    
    "health": {},

    "housing": {
        "housing_units": {
            "number_housing_units": {
                "table_id": "B25001",
                "universe": "Housing units",
                "name": "Number of housing units",
                "values": {
                    "geography": "139824",
                    "county": None,
                    "state": "223765",
                    "nation": "1098364"
                }
            },
            "percent_multi_unit": {
                "table_id": "B25024",
                "universe": "Housing units",
                "name": "Housing units in multi-unit structures",
                "values": {
                    "geography": "38.7",
                    "county": None,
                    "state": "22.9",
                    "nation": "32.1"
                }
            }
        },
        "tenure": {
            "rate_homeownership": {
                "table_id": "B25003",
                "universe": "Occupied housing units",
                "name": "Rate of homeownership",
                "values": {
                    "geography": "45.6",
                    "county": None,
                    "state": "45.5",
                    "nation": "44.1"
                }
            }
        },
        "value": {
            "median_value": {
                "table_id": "B25077",
                "universe": "Owner-occupied housing units",
                "name": "Median value of owner-occupied housing units",
                "values": {
                    "geography": "213945",
                    "county": None,
                    "state": "201934",
                    "nation": "207553"
                }
            }
        },
        "mobility": {
            "percent_same_house": {
                "table_id": "B07001",
                "universe": "Population 1 year and over in the United States",
                "name": "People living in same house for 1 year or more",
                "values": {
                    "geography": "38.1",
                    "county": None,
                    "state": "39.0",
                    "nation": "40.9"
                }
            }
        }
    },

    "sociocultural": {
        "place_of_birth": {
            "percent_foreign_born": {
                "table_id": "B05002",
                "universe": "Total population",
                "name": "Foreign-born persons",
                "values": {
                    "geography": "22.5",
                    "county": None,
                    "state": "19.4",
                    "nation": "25.7"
                }
            }
        },
        "language": {
            "percent_non_english_at_home": {
                "table_id": "B16001",
                "universe": "Population 5 years and over",
                "name": "People with language other than English spoken at home",
                "values": {
                    "geography": "9.3",
                    "county": None,
                    "state": "9.7",
                    "nation": "11.2"
                }
            }
        }
    },

    "veterans": {
        "veteran_status": {
            "number_veterans": {
                "table_id": "B21002",
                "universe": "Civilian veterans 18 years and over",
                "name": "Number of veterans",
                "values": {
                    "geography": "4983",
                    "county": None,
                    "state": "52015",
                    "nation": "1099374"
                }
            }
        }
    }
}