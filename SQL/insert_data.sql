-- Börja använda databasen
USE Musikdatabas;

-- Lägg in artister
INSERT INTO Artist (ArtistId, Name)
VALUES
(1, 'Synth Masters'),
(2, 'Rock Rebels'),
(3, 'Lonely Singer');

-- Lägg in album kopplade till artisterna
INSERT INTO Album (AlbumId, Title, ArtistId)
VALUES
(1, 'Neon Dreams', 1),   -- Synth Masters
(2, 'Electric Nights', 1),
(3, 'Rebel Yell', 2),    -- Rock Rebels
(4, 'Heavy Roads', 2);

-- Lägg in låtar kopplade till albumen
INSERT INTO Track (TrackId, Title, Duration, AlbumId)
VALUES
(1, 'Intro Beat', 90, 1),
(2, 'Future Sound', 240, 1),
(3, 'Midnight Pulse', 300, 2),
(4, 'Dance Machine', 200, 2),
(5, 'Wild Ride', 180, 3),
(6, 'Broken Chains', 360, 3),
(7, 'Highway Storm', 400, 4),
(8, 'Final Shout', 250, 4),
(9, 'Extra Song 1', 200, 1),
(10, 'Extra Song 2', 220, 1),
(11, 'Extra Song 3', 180, 1),
(12, 'Extra Song 4', 240, 1),
(13, 'Extra Song 5', 210, 1);