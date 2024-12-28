/*
select first_name , last_name from customer
where customer_id IN(
select customer_id from payment
where payment_date 
between '2020-01-25' and '2020-01-25 23:59')





select first_name, email
from customer
where customer_id IN (
select customer_id from payment
group by customer_id
having sum(amount)>30
)

*/



select first_name, email
from customer
where customer_id IN (
select customer_id from payment
group by customer_id
having sum(amount)>100
)
and customer_id IN (select customer_id from customer 
                     inner join address
					 on address.address_id = customer.address_id
					 where district = 'California')









