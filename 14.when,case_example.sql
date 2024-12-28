select 
count(*) as flights, 
case
when extract(month from scheduled_departure) in (12,1,2) 
     then 'Winter'
when extract(month from scheduled_departure) <=5
     then 'Spring'
when extract(month from scheduled_departure) <= 8
     then 'Summer'
else 'Fall'
end as season
from flights  
group by season