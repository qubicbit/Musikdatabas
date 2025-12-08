-- 1. Visa alla låtar som är längre än 200 sekunder
SELECT Title, Duration
FROM Track
WHERE Duration > 200;

-- 2.Visa alla låtar från album 1 sorterade efter längd
SELECT Title, Duration
FROM Track
WHERE AlbumId = 1
ORDER BY Duration DESC;

-- 3. Visa alla artister vars namn börjar med 'R'
SELECT ArtistId, Name
FROM Artist
WHERE Name LIKE 'R%';

-- 4. Visa alla album sorterade alfabetiskt
SELECT AlbumId, Title
FROM Album
ORDER BY Title ASC;

-- 5. Antal låtar per album
SELECT AlbumId, COUNT(*) AS NumberOfTracks
FROM Track
GROUP BY AlbumId;

-- 6. Total speltid per album
SELECT AlbumId, SUM(Duration) AS TotalDuration
FROM Track
GROUP BY AlbumId;

-- 7. Visa alla låtar vars titel innehåller ordet 'Song'
SELECT TrackId, Title
FROM Track
WHERE Title LIKE '%Song%';

-- 8.Visa artister sorterade efter namn i fallande ordning
SELECT ArtistId, Name
FROM Artist
ORDER BY Name DESC;

-- 9. Genomsnittlig låtlängd per album
SELECT AlbumId, AVG(Duration) AS AverageDuration
FROM Track
GROUP BY AlbumId;
