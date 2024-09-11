--Let's invite the artists who have written the most rock music in our datset.
--Write a query that returns the artist name and total track count
--of the top 10 rock bands.

Select	artist.artist_id, artist.name, Count (artist.artist_id) As number_of_songs
From track
Join album ON album.album_id =track.album_id
Join artist ON artist.artist_id=album.artist_id
JOIN genre ON genre.genre_id = track.genre_id
Where genre.name Like 'Rock'
Group By artist.artist_id
ORDER BY number_of_songs DESC
Limit 10;

