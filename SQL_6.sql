--write a query to return the email, first name, last name, & Genre of all Rock Music listeners.
--Return your list ordered alphabetically by email starting with A.

Select Distinct email, first_name, last_name
From Customer
Join invoice ON customer.customer_id = invoice.customer_id
Join invoice_line ON invoice.invoice_id = invoice_line.invoice_id
Where track_id IN(
	SELECT track_id From track
	Join genre On track.genre_id = genre.genre_id
	where genre.name Like 'Rock'
)
Order By email;