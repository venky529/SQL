/*select round(avg(total_amount),2) as Avg_lifetime_spent from
(
select customer_id, sum(amount) as total_amount
from payment
group by customer_id)


select round(avg(amount_per_day),2) from (
select sum(amount) as amount_per_day, date(payment_date) from payment
group by date(payment_date))


*/






select * from payment p1
where amount = ( select max(amount) 
            from payment p2
           where p1.customer_id = p2.customer_id)
order by customer_id









