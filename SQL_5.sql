--Who is the best customer? The customer who has spent the most money
--will be declared the best customer. Write a query that returns the
--person who has spent the most money.

select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total 
from customer
Join invoice ON customer.customer_id = invoice.customer_id
Group by customer.customer_id
order by total DESC
Limit 1;