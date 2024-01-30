/* Seasonal sale
It's that time of year again! The weather open. To celebrate and to entice new customers.
You're given a table of Dishes.
We've decided to apply the following discounts to our menu:
• Items below $7 will be 5% off.
• Items $7 to $10 will be 10% off.
• Items priced above $10 will be 15% off.

** TASK **: Calculate the sale price of all the menu items as determined by the provided discount schedule.
Result
Your result should have four columns:
• Name of each dish
• OriginalPrice of each dish (the Price value from the Dishes table)
• DiscountPercent ("5%" "10%" or "15%") that will be applied to each dish
• DiscountedPrice of each dish (rounded to two decimal places)
Sort the new menu alphabetically by Name . */

select 
    name,
    price as originalprice,
    case 
        when price > 10 then '15%'
        when price > 6 then '10%'
        when price <= 6 then '5%'
    end as discountpercent,  
    case 
        when price > 10 then round((price - price * 0.15), 2)
        when price > 6 then round((price - price * 0.10), 2)
        when price <= 6 then round((price - price * 0.05), 2)
    end as discountedprice
from dishes
order by name;




