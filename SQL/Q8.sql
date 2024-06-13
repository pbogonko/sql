CREATE TABLE Employees(employee_id int,employee_name varchar(20),manager_id int);
insert into Employees values(1,'john doe',null),(2,'jane smith',1),(3,'alice brown',1),(4,'bob johnson',2),(5,'charlie black',null);
select employee_name from Employees where manager_id is null;