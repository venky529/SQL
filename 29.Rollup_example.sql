select
'Q' || to_char(payment_date , 'Q') as Quarter,
extract(month from payment_date) as Month,
date(payment_date),
sum(amount)
from payment
group by 
rollup(
'Q' || to_char(payment_date , 'Q'),
extract(month from payment_date),
date(payment_date)
)
order by 1,2,3