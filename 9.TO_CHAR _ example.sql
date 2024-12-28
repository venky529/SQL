select 
sum(amount) as total_amount,
to_char(payment_date, 'Dy, DD/MM/YYYY') as day
from payment
group by day
order by total_amount asc

---------------

select 
sum(amount) as total_amount,
to_char(payment_date, 'Mon,YYYY') as mon_year
from payment
group by mon_year
order by total_amount asc

-------------------------


select 
sum(amount) as total_amount,
to_char(payment_date, 'Dy, HH:MI') as day_time
from payment
group by day_time
order by total_amount desc




