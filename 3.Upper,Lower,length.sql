select
lower(first_name),
lower(last_name),
lower(email)
from customer
where length(first_name) >10 
or length(last_name) >10


--- 
select
upper(email) as email_upper,
lower(email) as email_lower,
length(email)
from customer
where length(email) < 30 