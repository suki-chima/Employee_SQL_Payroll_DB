# Employee_SQL_Payroll_DB
Setting up of Employee DB using MYSQL Workbench, setting up of tables and then analying the payroll data using SQL queries. 

This project aims to create a payroll database based on the Employee_Payroll_2023.csv dataset, containing approximately 5000 records of payroll employee information from the City of Los Angeles in the US. The database will be designed using MySQL Workbench, with tables representing entities and their attributes from the dataset. Additionally, we will establish relationships between tables by defining primary and foreign keys and build an ERD Diagram.

## General Instructions
## Exploring the Dataset

Download the Employee_Payroll_2023.csv
Open the dataset in Excel to understand its structure and content
Identify entities and their attributes that need to be stored as tables in the payroll database

## Creating the Database

Launch MySQL Workbench
Create a new database 
Create Tables

Based on the identified entities and attributes, create different tables in the database with the following fields:

Employee Table: GENDER, ETHNICITY, EMPLOYEE_NO

Department Table: EMPLOYEE_NO, DEPARTMENT_NO, DEPARTMENT_TITLE

Jobdetails Table: EMPLOYEE_NO, JOB_CLASS_PGRADE, JOB_TITLE, EMPLOYMENT_TYPE, JOB_STATUS

Payinfo Table: EMPLOYEE_NO, REGULAR_PAY, OVERTIME_PAY, ALL_OTHER_PAY, TOTAL_PAY, CITY_RETIREMENT_CONTRIBUTIONS, BENEFIT_PAY

## Inserting Data into Tables

To populate the tables, use an online Excel to SQL converter like TableConvert (https://tableconvert.com/excel-to-sql) to convert the data from the columns into SQL statements
Copy and paste the converted SQL statements into MySQL Workbench to insert values into their respective tables

## Making Tables Relational

Add primary key. 
Establish relationships between tables by defining appropriate foreign keys that reference the primary keys of related tables
Build ERD Model

## SQL Queries and Analysis
After creating the database, we can use SQL queries to perform various analyses on the payroll data. You can find some samples questions we could answer in the file Analysis_Employee_Payroll.sql These are just a few examples of the analyses you could perform using SQL queries. SQL provides powerful tools to filter and analyse data, allowing you to gain valuable insights from the Employee Payroll Database.


Source
https://controllerdata.lacity.org/Payroll/City-Employee-Payroll-Current-/g9h8-fvhu
