--skapa en databas
--create database Musikdatabas

--börja använda databasen
use Musikdatabas

-- Skapa tabellen Artist
CREATE TABLE Artist (
    ArtistId INT PRIMARY KEY NOT NULL,   -- Unik identifierare för varje artist
    Name NVARCHAR(100) NOT NULL          -- Artistens namn
);

-- Skapa tabellen Album
CREATE TABLE Album (
    AlbumId INT PRIMARY KEY NOT NULL,    -- Unik identifierare för varje album
    Title NVARCHAR(200) NOT NULL,        -- Albumets titel
    ArtistId INT NOT NULL,               -- Referens till Artist
    CONSTRAINT FK_Album_Artist FOREIGN KEY (ArtistId)
        REFERENCES Artist(ArtistId)
);

-- Skapa tabellen Track
CREATE TABLE Track (
    TrackId INT PRIMARY KEY NOT NULL,    -- Unik identifierare för varje spår
    Title NVARCHAR(200) NOT NULL,        -- Spårets titel
    Duration INT NOT NULL CHECK (Duration > 0), -- Spårets längd i sekunder/minuter
    AlbumId INT NOT NULL,                -- Referens till Album
    CONSTRAINT FK_Track_Album FOREIGN KEY (AlbumId)
        REFERENCES Album(AlbumId)
);


