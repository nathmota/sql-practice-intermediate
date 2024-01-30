/* Which days did people order pizza?
One metric of the success of a product is whether it is in constant demand.
Imagine we want to explore how many of a specific dish are ordered on a day-by-
day basis.
You're given the tables Orders , OrdersDishes , and Dishes

** TASK **: Return a list of days that "Handcrafted Pizza" was ordered, and how
many were ordered on each day.
Result
Two columns:
• Numsold (the quantity of Handcrafted Pizzas sold that day)
• Day (the date in the format YYYY-MM-DD)
Sort the results by Day with the earliest day at the top.
Constraints
• Do not create rows for davs when no Handcrafted Pizzas were ordered. */

select 
    count(o.orderid) as numsold,
    cast(o.orderdate as date) day
from orders o
join ordersdishes od
on o.orderid = od.orderid
join dishes d
on od.dishid = d.dishid
where od.dishid = 12 
group by day
order by day;





