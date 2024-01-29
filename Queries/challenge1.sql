/* The Customers table contains information about our customers, and its primary
key, CustomerID , is also used in the Orders table as a foreign key.
The Orders table contains one record for each food and beverage order placed in
our restaurant. 
Each order has an OrderID , which is the primary key in the Orders 
table and is also used as a foreign key in the OrdersDishes table.
The OrdersDishes table acts as a linking table between Orders and Dishes . 
It contains one record for each item in an order, associating an OrderlD with a
particular DishID .
The Dishes table contains the Price of each dish, and each dish is addressed by its
DishID .
Using these tables together, we can calculate the total amount that each of our
customers has spent in our restaurant.

**TASK**: Return a report of the customers who have spent over $450 since our
restaurant opened.*/ 

select
    o.customerid,
    c.firstname,
    c.lastname,
    sum(d.price) as totalspend
from customers c
join orders o on c.customerid = o.customerid
join ordersdishes od on o.orderid = od.orderid
join dishes d on od.dishid = d.dishid
group by o.customerid
having totalspend > 450
order by totalspend desc;



