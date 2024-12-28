select  title,
case
when (rating in ('PG','PG-13') or length > '210') 
    then 'Great rating or long(tier 1)'
when (description like '%Drama%' and length > '90') 
     then 'Long drama(tier 2)'
when (description like '%Drama%' and length < '90')
     then 'Short drama(tier 3)'
when rental_rate < 1 then 'Very cheap (tier 4)' 
end 
from film

where 

case
when (rating in ('PG','PG-13') or length > '210') 
    then 'Great rating or long(tier 1)'
when (description like '%Drama%' and length > '90') 
     then 'Long drama(tier 2)'
when (description like '%Drama%' and length < '90')
     then 'Short drama(tier 3)'
when rental_rate < 1 then 'Very cheap (tier 4)' 
end is not null