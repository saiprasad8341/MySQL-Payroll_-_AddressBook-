-- UC1 - creating the database
create database payroll_service;
show databases;
use payroll_service;
-- UC2 - Creating the table
create table employee_payroll (EmployeeID int auto_increment primary key, 
	EmployeeName varchar(100), 
    PhoneNumber bigint,
    Address varchar(255),
    Department varchar(100),
    Gender char(1),
    BasicPay float,
    Deduction float,
    TaxablePay float,
    Tax float,
    NetPay float,
    StarDate date,
    City varchar(100),
    Country varchar(100)
);
-- UC3 - Insrting into table
insert into employee_payroll (EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deduction,TaxablePay,Tax,NetPay,StarDate,City,Country)
values ('xbg',123467890,'Delhi','HR','F',300000,2000,100,1000,265898,'2022-01-01 00:00:000','Bangalore','India'),
('xyz',123467823,'Hyd','Eng','F',280000,2000,100,1000,235898,'2022-04-08 00:00:000','Bangalore','India')
;
-- UC4 - retrieving the data
select * from employee_payroll;
-- UC5 - retrieve salary data in between date range
select NetPay from employee_payroll where StarDate between '2022-04-00 00:00:000' and date(now());
-- UC6 - retrieve data by gender
select EmployeeName from employee_payroll where Gender = 'M';
-- UC7 - find the Sum, avg, max ,min 
select sum(NetPay) from employee_payroll group by Gender;
select avg(NetPay) from employee_payroll group by Gender;
select max(NetPay) as maximum from employee_payroll;
select min(NetPay) as minimum from employee_payroll;
