create table customer_address
as
select first_name , last_name , email, address
from customer c
left join address a
on c.address_id = a.address_id
left join city ci
on ci.city_id = a.city_id

select * from customer_address