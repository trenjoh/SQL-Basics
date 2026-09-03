create database financial_db;
use financial_db;

create table customerrs(
country varchar(50),
year_s int,
uniqueid varchar(50),
Has_a_Bank_account varchar(50),
Type_of_Location varchar(50),
Cell_Phone_Access varchar(50),
household_size int,
Respondent_Age int,
gender_of_respondent varchar(50),
The_relathip_with_head varchar(50),
marital_status varchar(60),
Level_of_Educuation varchar(50),
Type_of_Job varchar(50)
);

select * from financial_dataset;
#This table was created during import of csv data
#Right click the database on the SCHEMAS
#Click Table Data import wizard, choose the right directory of the csv
#Click next then, click create a new table and click until the data successfully loads.

select Level_of_Educuation, Type_of_Job, gender_of_respondent, household_size  from financial_dataset
where Cell_Phone_Access = 'Yes'
and gender_of_respondent = 'Female'
and marital_status = 'Single/Never Married';

select gender_of_respondent,count(*) as all_male from customerrs
where gender_of_respondent = 'male'
group by gender_of_respondent;

select gender_of_respondent, 
count(*) AS count,
count(*) * 100.0/ sum(count(*)) over () as percentage 
#gets the total number of people.Then:percentage = group count / total count × 100
from customerrs
group by gender_of_respondent;


select gender_of_respondent,count(gender_of_respondent) as all_p
 from customerrs
 group by gender_of_respondent;

#male only
SELECT
    SUM(CASE WHEN gender_of_respondent = 'Male' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) 
        AS male_percentage
FROM customerrs;
