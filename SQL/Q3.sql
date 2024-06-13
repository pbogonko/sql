create table categories(category_id int not null,
category_name varchar(30) not null)

insert into categories values(1,'electronics',2,'clothing',3,'groceries')

create table purchases(purchase_id int,customer_id int,category_id int);

insert into purchases values(1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2);
select customers.customer_name from customers where not exists(
select 1 from categories where not exists(
select 1 from purchases where purchases.customer_id=customers.customer_id
and purchases.category_id=categories.category_id)
);
