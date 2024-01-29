/* 
What dishes did each order contain?
Imagine that we want to investigate our customers' order history, as part of
designing a new customer marketing campaign. A useful place to start is to
explore what dishes are ordered together.
To start exploring this information, output a report showing the OrderlD and an
alphabetized, comma-separated list of the items contained in each order, from May
1, 2022, to the present day.
You're given the tables Orders , OrdersDishes , and Dishes

** TASK **: 
Return a list of items in each order since May 1, 2022, separated by commas, in alphabetical order. */

select 
    o.orderid,
    group_concat(d.name order by d.name) as items
from orders o
join ordersdishes od
on o.orderid = od.orderid
join dishes d
on od.dishid = d.dishid
where o.orderdate >= '2022-05-01'
group by o.orderid;

