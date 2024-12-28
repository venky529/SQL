select c.first_name, c.last_name, c.email, 
ci.city_id, cn.country_id
from customer c
left join address a
on c.address_id = a.address_id
left join city ci
on a.city_id = ci.city_id
left join country cn
on ci.country_id = cn.country_id
and country = 'Brazil'


