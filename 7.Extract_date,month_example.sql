select 
extract(month from rental_date) as ex_date,
count(*)
from rental
group by ex_date
order by count(*) DESC