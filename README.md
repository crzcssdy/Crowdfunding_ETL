# Project 2: Crowdfunding_ETL


## Description
For this project, our group worked together to build an ETL pipeline using Python, Pandas, and regular expressions to extract and transform the data. After we transformed the data, we created four CSV files and used the CSV file data to create an ERD and a table schema. Afterwards, we upload the CSV file data into a Postgres database and saved the results in the repository.


## Create the Category and Subcategory DataFrames
To run the ETL_Mini_Project file, you will need to first import pandas as pd and numpy as np.

Additionally, you will need to import the contents of the Resources folder, such as campaign.csv and contacts.csv to run the code.

## The Crowdfunding Database
### Dependencies
* PostgreSQL
* pgAdmin
* The following .csv files are required in order to populate the database (contained in the 'data' folder ):
    * campaign.csv
    * category.csv
    * contacts.csv
    * subcategory.csv


### Installing & Execution
1. Open 'crowdfunding_db_schema.sql' in pgAdmin and run the queries in lines 1-48 to create the tables into a PostgreSQL database.

(**Note: While the tables can be created in an existing database, it is recommended to create a new dedicated database since the file includes code that will drop any duplicate named tables that may exist**)

2. Once the tables are created, use the Import/Export tool in pgAdmin to import the data from the .csv files located in the 'data' folder into their respective tables of the same name (ex: import data from 'category.csv' into table 'category').  To avoid errors, import the data in the same order as the corresponding tables were created and account for the headers when doing the imports.

3. Lines 50-61 of 'crowdfunding_db_schema.sql' can be run to verify that the data has been populated into the tables.


## Authors

Assiba Lea Apovo, Cassidy Cruz, Widchy Joachim, Daniel Pineda, and Edward Tabije 

## Acknowledgments
Crowdfunding_ETL was created as an assignment for the University of California, Irvine Data Analytics Bootcamp - June 2024 Cohort under the instruction and guidance of Melissa Engle (Instructor) and Mitchell Stone (TA).
The practical exercises and coding examples demonstrated through the bootcamp helped inform and inspire the code for this project.
