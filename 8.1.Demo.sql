select   customer_id,date(payment_date),
round(avg(amount),2) as avg_amount,
count(*)
from payment
where date(payment_date) 
in('28-04-2020', '29-04-2020' , '30-04-2020 23:59')

group by customer_id,date(payment_date)
having count(*)>1
order by avg_amount desc