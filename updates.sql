USE Musikdatabas;

-- 1. Uppdatera artistnamnet för 'Lonely Singer' till 'Solo Star'
UPDATE Artist
SET Name = 'Solo Star'
WHERE ArtistId = 3;

-- 2. Uppdatera titeln på albumet 'Heavy Roads' till 'Heavy Highways'
UPDATE Album
SET Title = 'Heavy Highways'
WHERE AlbumId = 4;

-- 3. (Extra exempel) Uppdatera längden på låten 'Future Sound' till 260 sekunder
UPDATE Track
SET Duration = 260
WHERE Title = 'Future Sound';
