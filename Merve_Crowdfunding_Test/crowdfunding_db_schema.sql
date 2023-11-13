-- Drop existing tables if they exist
DROP TABLE IF EXISTS category, subcategory, campaign, contacts;

-- Create category table
CREATE TABLE category (
    category_id INTEGER PRIMARY KEY,
    category VARCHAR
);

-- Create subcategory table
CREATE TABLE subcategory (
    subcategory_id INTEGER PRIMARY KEY,
    subcategory VARCHAR
);

-- Create contacts table
CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR
);

-- Create campaign table
CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER REFERENCES contacts(contact_id),
    company_name VARCHAR,
    description VARCHAR,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR,
    backers_count INTEGER,
    country VARCHAR,
    currency VARCHAR,
    launched_date DATE,
    end_date DATE,
    staff_pick BOOLEAN,
    spotlight BOOLEAN,
    event_type_id INTEGER,
    category_id INTEGER REFERENCES category(category_id),
    subcategory_id INTEGER REFERENCES subcategory(subcategory_id)
);



