select 
Extract(month from payment_date) as month,
sum(amount) as total_payment_amount
from payment
group by month
order by sum(amount) desc


---------------------------

select 
extract(dow from payment_date) as day_of_week,
sum(amount) as total_payment_amount
from payment
group by day_of_week
order by total_payment_amount desc


-----------------------

select customer_id,
extract(week from payment_date) as day_of_week,
sum(amount) as total_payment_amount
from payment
group by day_of_week, customer_id
order by total_payment_amount desc











