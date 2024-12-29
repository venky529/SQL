select address_id , count(*)
from address
group by address_id
having count(*) > 1