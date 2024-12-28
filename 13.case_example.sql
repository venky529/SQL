select 
count(total_amount) as count,
case
when total_amount <'20000' then 'Low price ticket'
when total_amount between '20000' and '150000' 
     then 'Mid price ticket'
else 'High price ticket'
end ttt
from bookings
group by ttt



