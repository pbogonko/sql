 select product_name,price from products
 group by product_name having count(distinct price)