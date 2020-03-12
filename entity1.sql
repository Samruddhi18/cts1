Create Database EmployeeDb

create table employee(empid int primary key,name varchar(20) Not Null,salary money Not Null,deptid int);
select @@SERVERNAME