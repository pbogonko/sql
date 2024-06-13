	CREATE TABLE employees(employee_id int,employee_name varchar(20),department_id int,salary int);
INSERT INTO employees values(1,'john doe',1,100000),(5,'charlie black',3,80000),(4,'bob johnson',2,110000),(3,'alice brown',2,120000),(2,'jane smith',1,95000);
    select max(salary) second_highest from employees 
	where salary<(select max(salary) from employees);