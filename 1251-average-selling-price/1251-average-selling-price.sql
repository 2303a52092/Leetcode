# Write your MySQL query statement below
select p.product_id ,COALESCE(ROUND(SUM(u.units * p.price) / ifnull(SUM(u.units),0), 2), 0) as average_price 
from prices p
left join unitssold u
on p.product_id=u.product_id and purchase_date between start_date and end_date
group by p.product_id ;