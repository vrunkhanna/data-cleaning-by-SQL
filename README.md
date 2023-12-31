# data-cleaning-by-SQL
SQL Data Cleaning Project

A project focused on cleaning and analyzing car-related data using SQL queries.

## Overview

Briefly describe the purpose of your project, highlighting that it involves SQL data cleaning and analysis of car-related information.

## SQL Queries

List and explain the SQL queries you performed for data cleaning and analysis.

### Total Cars

To get a count of total records in the dataset.

-- SQL Query Example --
SELECT COUNT(*) AS total_cars FROM your_table_name;

### Cars Available in 2023

The manager asked the employee how many cars will be available in 2023.

-- SQL Query Example --
SELECT COUNT(*) AS cars_in_2023 FROM your_table_name WHERE year = 2023;

### Cars Available in 2020, 2021, 2022

The manager asked the employee how many cars are available in 2020, 2021, and 2022.

-- SQL Query Example --
SELECT year, COUNT(*) AS total_cars FROM your_table_name WHERE year IN (2020, 2021, 2022) GROUP BY year;

### Cars Count by Year

Client asked to print the total of all cars by year.

-- SQL Query Example --
SELECT year, COUNT(*) AS total_cars FROM your_table_name GROUP BY year;

### Diesel Cars in 2020

Client asked how many diesel cars will there be in 2020.

-- SQL Query Example --
SELECT COUNT(*) AS diesel_cars_in_2020 FROM your_table_name WHERE year = 2020 AND fuel_type = 'diesel';

### Fuel Cars by Year

Manager told the employee to print all the fuel cars (petrol, diesel, and CNG) by year.

-- SQL Query Example --
SELECT year, fuel_type, COUNT(*) AS total_fuel_cars FROM your_table_name WHERE fuel_type IN ('petrol', 'diesel', 'CNG') GROUP BY year, fuel_type;

### Year with More than 100 Cars

Manager said there were more than 100 cars in a given year, which year had more than 100 cars.

-- SQL Query Example --
SELECT year, COUNT(*) AS total_cars FROM your_table_name GROUP BY year HAVING COUNT(*) > 100;

### Cars Count Details (2015 - 2023)

Manager said to the employee, "Print all cars count details between 2015 and 2023."

-- SQL Query Example --
SELECT year, COUNT(*) AS total_cars FROM your_table_name WHERE year BETWEEN 2015 AND 2023 GROUP BY year;

### Cars Details (2015 - 2023)

The manager said to the employee, "Print all cars details between 2015 to 2023."

-- SQL Query Example --
SELECT * FROM your_table_name WHERE year BETWEEN 2015 AND 2023;

## Getting Started

Provide instructions on how to set up and run your SQL data cleaning project. Include information on the database connection, schema, or any specific requirements.

## Usage

Explain how users can use your project and the SQL queries provided for data cleaning and analysis.

## Contributing

If you would like others to contribute to your project, provide guidelines for how they can do so, especially regarding SQL scripts and data cleaning techniques.

## License

Specify the license under which your project is distributed.

## Acknowledgements

If you used any external libraries, resources, or datasets, acknowledge and thank them here.