create database cars;
use cars;
select * from car_dekho; #data viewed from table


-- total cars: to get a count of total records--
select count(*) from car_dekho; #count = 7927


-- the manager asked the employee how many cars will be available in 2023? --
select count(*) from car_dekho where year = "2023";  # count = 6


-- the manager asked the employee how many cars is available in 2020, 2021, 2022? --
select count(*) from car_dekho where year = "2020"; #count = 74
select count(*) from car_dekho where year = "2021"; #count = 7
select count(*) from car_dekho where year = "2022"; #count = 7


-- if we want to do that by group by query --
select count(*) from car_dekho where year in (2020, 2021, 2022) group by year; # it will show number of count in year list


-- client asked me to print the total of all cars by year. I don't see all the details. --
select year ,count(*) from car_dekho group by year; # report of cars of all years total cars


-- client asked to car dealer agent how many diesel cars will there be in 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "diesel"; # total count is 20
select count(*) from car_dekho where year = 2020 and fuel = "petrol"; # total count is 51


-- the manager told the employee to give a  print all the fuel cars (petrol, diesel and CNG) come by all year --
select year, count(*) from car_dekho where fuel = "Petrol" group by year; #total cars from fuel type "petrol" in all year.
select year, count(*) from car_dekho where fuel = "Diesel" group by year; #total cars from fuel type "Diesel" in all year.
select year, count(*) from car_dekho where fuel = "CNG" group by year; #total cars from fuel type "CNG" in all year.


-- Manager said there were  more than 100 cars in a given year which year had more than 100 cars?? --
select year, count(*) from car_dekho group by year having count(*)>100;


-- the manager said to the employee all cars  count details between 2015 and 2023; we need a complete this. --
select count(*) from car_dekho where year between 2015 and 2023; # count is 4124.


-- The manager said to the employee all cars details between 2015 to 2023 we need to complete this. --
select * from car_dekho where year between 2015 and 2023;


-- END --