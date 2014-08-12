Censusreporter API
==================

This module is responsible for the database backend and serving census information to the frontend. It supports multiple census and other data tables and a variety of heirarchical geographies.

Geographies
-----------

A geography is identified uniquely by a `level` and a `code` which, when combined, form its `geoid`. Each level describes a different way of breaking up a country and can be units such as `country`, `province`, `municipality`, `state` or `county`. The code is some ID that is unique for that level, either a number or a string.

Some example geoids are:

* `province-WC`: the Western Cape province in South Africa
* `country-KE`: Kenya
* `ward-19100057`: ward 19100057 in Cape Town, South Africa
* `county-1`: the Mombasa county in Kenya

Data Tables
-----------

A data table is a logical collection of fields and values that describe numeric facts about a geography, along with some extra metadata about the table.

A `field` is generally an attribute of a place or a person in that place, such as `language` or `gender` which has a corresponding `key` such as `English` or `Female`. Fields and their keys describe a collection of people that match those attributes, such as all the English-speaking females in a province. The `value` associated with a collection of fields and keys is the number of people with that attribute.

For example, here is a datatable with two fields, `language` and `gender`: 

    language  gender  total
    -----------------------
    English   Male    298
    English   Female  312
    French    Male    128
    French    Female  779

Most census data tables describe a **partitioning** of the population: the population is broken into groups (such as by language or gender) and every person is counted exactly once. If we added up all the values for all key combinations, we'd get the total population. That's useful because it means we can express the value for each combination of keys as a percentage of the total.

A data table is broken down by geography. Our example table above could be broken down by province:

    geoid       language  gender  total
    -----------------------------------
    province-WC English   Male    283
    province-WC English   Female  199
    province-WC French    Male    324
    province-WC French    Female  287
    province-GT English   Male    298
    province-GT English   Female  312
    province-GT French    Male    128
    province-GT French    Female  779

Database Tables
---------------

Each data table is physically backed by many PostgreSQL tables, one for each geo level. For example

    schoolattendance_sex_municipality
    schoolattendance_sex_province
    schoolattendance_sex_country
    
Each of these tables has a `<level>_code` column that corresponds to the geo level for that table and is a foreign key into the corresponding geography table. Each `field` also has a corresponding column and the `total` column represents the value for that row:

    # select * from schoolattendance_sex_country;
      total   | school attendance |  sex   | country_code
    ----------+-------------------+--------+--------------
     14579976 | at school         | male   | KE
     14149928 | left school       | male   | KE
      5317852 | never attended    | male   | KE
       774668 | unspecified       | male   | KE
     13646608 | at school         | female | KE
     14315758 | left school       | female | KE
      6798986 | never attended    | female | KE
       587326 | unspecified       | female | KE
    (8 rows)
    
Defining a Data Table
---------------------

When we define a data table, we describe the fields it contains. Under the hood we work out what the name of the underlying PostgreSQL table will be, taking into account the geo level. This allows us to provide the functionality required by the table explorer interface in censusreporter.
