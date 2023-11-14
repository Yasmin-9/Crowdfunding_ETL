# Crowdfunding_ETL
In this project, we built an ETL pipeline using Python, Pandas, and both Python dictionary methods and regular expressions to extract and transform the data. We also created four CSV files and used the CSV file data to create an ERD (Entity Relationship Diagram) and a table schema. Finally, we uploaded the CSV file data into a Postgres database.

### Resources used 
The two Excel files in the Resources folder were used to build the data frames for this project:
- crowdfunding.xlsx
- contacts.xlsx

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
