CREATE TABLE employees (
    employee_id INT NOT NULL,
    employee_name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    salary int NOT NULL
);

INSERT INTO employees (employee_id, employee_name, department_id, salary)
VALUES
    (1, 'John Doe', 1, 100000),
    (2, 'Jane Smith', 1, 95000),
    (3, 'Alice Brown', 1, 90000),
    (4, 'Bob Johnson', 1, 85000),
    (5, 'Charlie Black', 1, 80000),
    (6, 'David Green', 1, 75000),
    (7, 'Eve White', 2, 110000);
	 select departments.department_name,avg(employees7.salary) as averageSalary
	 from employees7 
	 join departments on departments.
	 department_id=employees7.department_id 
	 group by department_name having count(*)>5;