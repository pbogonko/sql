create table orders(order_id int,customer_id  int,order_date date);

insert into orders(2043,'2023-06-01'),(1,2044,2,'2023-06-02'),(3,2045,'2023-06-03'),(1,2046,'2023-06-04');
begin transaction;
update orders SET order_date='2023-07-23' where order_id=2045;
commit transaction;
