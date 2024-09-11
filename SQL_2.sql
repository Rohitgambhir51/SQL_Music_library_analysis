-- Which countries have the most Invoices?

Select count (*) as c, billing_country
from invoice
group by billing_country
order by c desc
