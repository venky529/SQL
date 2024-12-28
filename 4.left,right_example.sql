 select 
right(email,5)
from customer

----

select 
left(right(email,4),1)
from customer
where email like '%.org'