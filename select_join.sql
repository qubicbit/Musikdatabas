-- 1. Visa alla låtar med albumtitel och artistnamn
SELECT
Track.Title,
Track.Duration,
Album.Title,
Artist.Name
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId;

-- 2. Visa alla album och antal låtar per album
SELECT Album.Title, 
Artist.Name,
COUNT(Track.TrackId) AS NumberOfTracks
FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId
LEFT JOIN Track ON Album.AlbumId = Track.AlbumId
GROUP BY Album.Title, Artist.Name;
