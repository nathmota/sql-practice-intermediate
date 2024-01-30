/* Formatting data
We've partnered with an outside vendor to provide some services for our employees. 
In order to get the employees enrolled, we need to share some information with the vendor.
You're given a table of Employees:
The vendor requires us to share the information with very specific formatting:
• Each employee's ID as a five-digit number (add leading zeroes)
• Each employee's Name in the format "Last, First"
• A Login that uses the employee's first initial and then up to seven characters
of their last name (a maximum of eight total characters)
• Their work Email which we'll construct using their Username from the
Employees table, and the text "@nadias-garden.com"

** TASK **: Write a query that returns the information in the specified formats.
Result
Four columns: Id, Name, Login, Email . Sort the results alphabetically by Name .*/

select 
    lpad(employeeid, 5, 0) as id,
    concat(lastname, ', ', firstname) as name, 
    lower(concat(substring(firstname, 1,1), substring(lastname, 1, 7))) as login,
    concat(
        username, 
        '@nadias-garden.com') as email
from employees
order by name;


