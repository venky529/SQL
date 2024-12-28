select 
film_id,
round(rental_rate / replacement_cost*100,2) 
as percentage
from film
where round(rental_rate / replacement_cost*100,2)  < 4
order  by film_id asc