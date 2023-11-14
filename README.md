# Crowdfunding_ETL
In this project, we built an ETL pipeline using Python, Pandas, and both Python dictionary methods and regular expressions to extract and transform the data. We also created four CSV files and used the CSV file data to create an ERD (Entity Relationship Diagram) and a table schema. Finally, we uploaded the CSV file data into a Postgres database.

### Resources used 
The two Excel files in the Resources folder were used to build the data frames for this project:
crowdfunding.xlsx
contacts.xlsx

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
