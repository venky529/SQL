select left(first_name,1) ||  '.' ||left(last_name,1) 
from customer

select * from customer


alter table customer
add column initals varchar(10)

update table film
set  rental_rate=1.99
where rental_rate = 0.99;

update  customer
set initals = left(first_name,1) || '.' ||left(last_name,1)

