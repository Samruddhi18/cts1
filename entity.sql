/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [empid]
      ,[name]
      ,[salary]
      ,[deptid]
  FROM [EmployeeDb].[dbo].[employee]

  drop table employee;
  create table employee(empid int primary key,name varchar(20) NOT NULL,salary int NOT NULL ,deptid int NOT NULL);

  create table department (dptid int primary key ,name varchar(30));
  insert into department values(1,'admin'),(2,'marketing'),(3,'technical');
   drop table department;
  alter table employee  Add Constraint pkb foreign key (deptid) references department(dptid); 
  select @@ServerNAme