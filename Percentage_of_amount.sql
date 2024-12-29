SELECT 
    customer_id, 
    sum(amount) as amount, 
    round((sum(amount) / total_amount) * 100, 4) AS percentage
FROM payment,
    (SELECT  
         SUM(amount) OVER () AS total_amount
     FROM payment) AS subquery
group by customer_id,total_amount
order by customer_id
