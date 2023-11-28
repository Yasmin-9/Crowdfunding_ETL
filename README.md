# Crowdfunding_ETL
In this project, we built an ETL pipeline using Python, Pandas, and both Python dictionary methods and regular expressions to extract and transform the data. We also created four CSV files and used the CSV file data to create an ERD (Entity Relationship Diagram) and a table schema. Finally, we uploaded the CSV file data into a Postgres database.

### Resources used 
The two Excel files in the Resources folder were used to build the data frames for this project:
- crowdfunding.xlsx
- contacts.xlsx

### ERD
![image](https://github.com/Yasmin-9/Crowdfunding_ETL/assets/142265222/bee2ad2d-707a-4d0e-bc57-6cda858576b7)


## Project Outline
The project was divided into 4 major sections: 

### 1. Create the Category and Subcategory DataFrames
Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
- A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
- A "category" column that contains only the category titles
- Export DataFrame as category.csv and save it to GitHub repository.
Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
- A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
- A "subcategory" column that contains only the subcategory titles
- Export DataFrame as subcategory.csv and save it to GitHub repository.

### 2. Create the Campaign DataFrame
Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
- The "cf_id" column
- The "contact_id" column
- The "company_name" column
- The "blurb" column, renamed to "description"
- The "goal" column, converted to the float data type
- The "pledged" column, converted to the float data type
- The "outcome" column
- The "backers_count" column
- The "country" column
- The "currency" column
- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
- The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
- The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

### 3. Create the Contacts DataFrame

Extract and Transform the data from the contacts.xlsx Excel data using both of the following methods:
1. Method 1: Use Python dictionary methods.
2. Method 2: Use regular expressions.

Method 1, complete the following steps:

- Import the contacts.xlsx file into a DataFrame.
- Iterate through the DataFrame, converting each row to a dictionary.
- Iterate through each dictionary, doing the following:
- Extract the dictionary values from the keys by using a Python list comprehension.
- Add the values for each row to a new list.
- Create a new DataFrame that contains the extracted data.
- Split each "name" column value into a first and last name, and place each in a new column.
- Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

Method 2, complete the following steps:

- Import the contacts.xlsx file into a DataFrame.
- Extract the "contact_id", "name", and "email" columns by using regular expressions.
- Create a new DataFrame with the extracted data.
- Convert the "contact_id" column to the integer type.
- Split each "name" column value into a first and a last name, and place each in a new column.
- Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

### 4. Create the Crowdfunding Database
1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.
2. Use the information from the ERD to create a table schema for each CSV file.
_Note: Remember to specify the data types, primary keys, foreign keys, and other constraints_.
3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
4. Create a new Postgres database, named crowdfunding_db.
5. Using the database schema, create the tables in the correct order to handle the foreign keys.
6. Verify the table creation by running a SELECT statement for each table.
7. Import each CSV file into its corresponding SQL table.
8. Verify that each table has the correct data by running a SELECT statement for each.

### Conclusion
Extract, Transform and Load successfuly done

### Group members: 
Augdrey Nkurmah, Angaddeep Dhillon, Merve Celme, Yasmin Bsata
