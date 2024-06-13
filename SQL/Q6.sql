create table customers(customer_id int not null,customer_name varchar(20));
insert into customers values(1,'alice'),(2,'bob'),(3,'charlie');
create table sales(sales_id int not null,customer_id int not null,sales_amount int not null);
insert into sales (1,1,500),(2,1,300),(3,2,400),(4,2,200);

SELECT c.customer_id, c.customer_name, SUM(s.sales_amount) AS total_sales
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.customer_name;