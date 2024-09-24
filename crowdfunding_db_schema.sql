-- Drop any previous versions of the tables that may exist
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;

--Create table called 'category'
CREATE TABLE  category (
	 category_id VARCHAR PRIMARY KEY,
	 category VARCHAR NOT NULL
);

--Create table called 'subcategory'
CREATE TABLE  subcategory (
	 subcategory_id VARCHAR PRIMARY KEY,
	 subcategory VARCHAR NOT NULL
);

--Create table called 'contacts'
CREATE TABLE  contacts (
	 contact_id INTEGER PRIMARY KEY,
	 first_name VARCHAR NOT NULL,
	 last_name VARCHAR NOT NULL,
	 email VARCHAR NOT NULL
);

--Create table called 'campaign' that has foreign key 'contact_id' referencing 'contact_id' from 'contacts' table,
--foreign key 'category_id' referencing 'category_id' from 'category' table, and
--foreign key 'subcategory_id' referencing 'subcategory_id' from 'subcategory' table
CREATE TABLE campaign (
	cf_id INTEGER PRIMARY KEY,
	contact_id INTEGER NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--After importing data into the tables from their respective .csv files via the pgAdmin Import/Export tool, verify that the data populated correctly
--Verify table 'category' was created and populated using imported data from 'category.csv' 
SELECT * FROM category;

--Verify table 'subcategory' was created and populated using imported data from 'subcategory.csv'
SELECT * FROM subcategory;

--Verify table 'contacts' was created and populated using imported data from 'contacts.csv'
SELECT * FROM contacts;

--Verify table 'campaign' was created and populated using imported data from 'campaign.csv'
SELECT * FROM campaign;