# Crowdfunding_ETL


## Description

### Dependencies
* PostgreSQL
* pgAdmin
* The following .csv files are required in order to populate the database (contained in the 'data' folder ):
    * titles.csv
    * employees.csv
    * salaries.csv
    * dept_manager.csv
    * dept_emp.csv
    * departments.csv


### Installing & Execution
1. Open 'employeesql_table schemata.sql' in pgAdmin and run the queries in lines 1-60 to create the tables into a PostgreSQL database.

(**Note: While the tables can be created in an existing database, it is recommended to create a new dedicated database since the file includes code that will drop any duplicate named tables that may exist**)

2. Once the tables are created, use the Import/Export tool in pgAdmin to import the data from the .csv files located in the 'data' folder into their respective tables of the same name (ex: import data from 'departments.csv' into table 'departments).  To avoid errors, import the data in the same order as the corresponding tables were created and account for the headers when doing the imports.

3. Lines 63-80 of 'employeesql_table schemata.sql' can be run to verify that the data has been populated into the tables

4. Once the tables have been created and populated, open 'employeesql_analysis queries.sql' in pgAdmin.  The queries to create the several desired views can be run individually for analysis.

## Authors

Assiba Lea Apovo, Cassidy Cruz, Widchy Joachim, Daniel Pineda, and Edward Tabije 

## Acknowledgments
Crowdfunding_ETL was created as an assignment for the University of California, Irvine Data Analytics Bootcamp - June 2024 Cohort under the instruction and guidance of Melissa Engle (Instructor) and Mitchell Stone (TA).
The practical exercises and coding examples demonstrated through the bootcamp helped inform and inspire the code for this project.
