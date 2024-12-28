select 
c.first_name , 
c.last_name ,
a.phone, 
a.district

from address as a
left  join  customer as c
on a.address_id = c.address_id
where a.district = 'Texas'



-------------------



select a.address_id, a.address from address a
left join customer c
on c.address_id = a.address_id
where c.customer_id is null







