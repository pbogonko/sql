CREATE TABLE sales (sales_id int,product_id int,sales_date date,sales_amount int);
insert into sales values(1,1,2023-06,01,100),(2,1,2023-06,02,150),(3,1,2023-06,03,200),(4,1,2023-06,04,250),(5,1,2023-06,01,300),(6,1,2023-06,02,350),(7,1,2023-06,03,400),(8,1,2023-06,04,450);
select product_id,sales_date,sales_amount,
avg(sales_amount ) over (partition by product_id
order by sales_date rows between 6 preceeding and 
current row) as seven_Day_average from sales
where sales_date between '20223-06-01' and '2023-06-07';