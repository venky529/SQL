select 
customer_id,
return_date-rental_date
from rental
where customer_id = 35

------------------

select 
customer_id,
avg(return_date-rental_date) as avg_date
from rental
group by customer_id
order by avg_date desc

