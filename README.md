# Data-Dictionary

Licensing Systems Data Dictionary 
* [Single MySQL file](https://github.com/ffagithub/Data-Dictionary/blob/master/master_data.sql) - contains structure and data
* [Single Postgres file](https://github.com/ffagithub/Data-Dictionary/blob/master/master_data_postgres.sql) - contains structure and data
* [CSV files](https://github.com/ffagithub/Data-Dictionary/tree/master/separated/csv) - contains CSV files that can be opened in Excel spreadsheet, first line is column heading
* [MySQL files](https://github.com/ffagithub/Data-Dictionary/tree/master/separated/mysql) - contains MySql .sql files separated into individual files
* [Postgres files](https://github.com/ffagithub/Data-Dictionary/tree/master/separated/postgres) - contains Postgres .sql files separated into individual files

# Sources

Listed below are the source of the standards as well as links to the actual data sources

* **countries** - Country Codes Github Repo https://github.com/datasets/country-codes/blob/master/data/country-codes.csv. Original sources are from ISO 3166 codes, ITU dialing codes, ISO 4217 currency codes, and many others , added fisheries specific information
* **gear_type** - FAO, ftp://ftp.fao.org/docrep/fao/008/t0367t/t0367t01.pdf
* **vessel_type** - FAO, ftp://ftp.fao.org/fi/DOCUMENT/cwp/handbook/annex/annexLII.pdf
* **ports** - UN, https://www.portconnect.co.nz/Docs/PortConnectStandardUNLocationCodes(Global).xls
* **species** - FAO, information [http://www.fao.org/fishery/collection/asfis/en](http://www.fao.org/fishery/collection/asfis/en)... download [ftp://ftp.fao.org/FI/STAT/DATA/ASFIS_sp.zip](ftp://ftp.fao.org/FI/STAT/DATA/ASFIS_sp.zip)
* **storage_method** - Unknown but common across all forms, suspect FAO is source TBC
* **authorised_fishing_area** - Pacific Commission (SPC) [http://www.spc.int/oceanfish/en/ofpsection/](http://www.spc.int/oceanfish/en/ofpsection/)
* **units_of_measure** - THE UNIFIED CODE FOR UNITS OF MEASURE [http://unitsofmeasure.org/ucum.html](http://unitsofmeasure.org/ucum.html) only taken a subset of units relevant for licensing. 

Specifically these are:
```
  kilolitres            | volume    |	kl
  gallon                | volume    | gal
  meter                 | length    | m
  foot                  | length    | ft
  kilowatt              | power     | kW
  horsepower            | power    | hp
  pound per sqare inch  | pressure  | psi
```

# Instrcutions
## Exporting Data
SSH into server
run the following at the command prompt to export data:
> mysqldump -u root -p --databases master_data >master_data.sql

OR for Postgres
> pg_dump master_data > master_data.sql
