create database carSales;
use carSales;
create table carprices(
year INT,
make VARCHAR(50),
model VARCHAR(100),
trim varchar(50),
body varchar(50),
transmission varchar(50),
vin varchar(20) primary KEY,
state char(2),
conditions INT,
odometer INT,
color varchar(50),
interior varchar(50),
seller varchar(100),
mmr int,
sellingprice INT,
saledate datetime
);
select * from carprices
