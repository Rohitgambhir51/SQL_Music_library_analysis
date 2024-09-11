--Return all the track names that have a song length longer than the average song length.
--Return the Name and Milliseconds for each track. Order by the song length with the longest
--songs listed first.

Select name, milliseconds
From track
Where milliseconds > (
	Select avg(milliseconds) As avg_track_length
	FROM track)
ORDER BY milliseconds Desc;