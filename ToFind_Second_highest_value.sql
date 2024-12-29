select max(amount) 
from payment
where amount < (select max(amount) from payment)