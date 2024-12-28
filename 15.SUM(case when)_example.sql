select
sum(case 
when  rating in ('PG' , 'G') then 1
else 0
end ) as no_of_rating_with_g_or_pg
from film 


-------------

select 
rating as "G",
count(*)
from film
group by rating

