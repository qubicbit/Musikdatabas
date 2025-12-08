USE Musikdatabas;

-- 1. Ta bort en artist (Lonely Singer) som inte har några album
DELETE FROM Artist
WHERE ArtistId = 3;

-- 2. Ta bort en låt med titeln 'Extra Song 5'
DELETE FROM Track
WHERE Title = 'Extra Song 5';
