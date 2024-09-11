--Find how much is spent by each customer on artists. Write a query to return customer name
--artist name and total spent.
----common table expressions

With best_selling_artist AS(
	SELECT artist.artist_id AS artist_id, artist.name AS artist_name,
	SUM(invoice_line.unit_price*invoice_line.quantity) AS total_sales    
	From Invoice_line
	Join track ON track.track_id = Invoice_line.track_id
	Join album ON album.album_id = track.album_id
	Join artist ON artist.artist_id = album.artist_id
	GROUP BY 1
	ORDER BY 3 DESC
	LIMIT 1
)
SELECT c. Customer_id, c.first_name, c.last_name, bsa.artist_name, 
Sum(il.unit_price*il.quantity) AS amount_spent
From invoice i
Join customer c ON c.customer_id = i.customer_id
Join invoice_line il ON il.invoice_id = i.invoice_id
Join track t ON t.track_id = il.track_id
Join album alb ON alb.album_id = t.album_id
Join best_selling_artist bsa ON bsa.artist_id = alb.artist_id
GROUP BY 1,2,3,4
ORDER BY 5 DESC;


