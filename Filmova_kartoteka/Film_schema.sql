CREATE TABLE Film (
    ID INTEGER PRIMARY KEY,
    Nazev TEXT NOT NULL,
    Popis TEXT,
    Delka INTEGER,
    DatumVydani DATE
);

CREATE TABLE Kategorie (
    ID INTEGER PRIMARY KEY,
    Nazev TEXT NOT NULL
);

CREATE TABLE Herec (
    ID INTEGER PRIMARY KEY,
    Jmeno TEXT NOT NULL,
    Prijmeni TEXT NOT NULL
);

CREATE TABLE Oceneni (
    ID INTEGER PRIMARY KEY,
    Nazev TEXT NOT NULL,
    Popis TEXT,
    Datum DATE,
    Misto TEXT
);

CREATE TABLE Film_Kategorie (
    FilmID INTEGER,
    KategorieID INTEGER,
    PRIMARY KEY (FilmID, KategorieID),
    FOREIGN KEY (FilmID) REFERENCES Film(ID),
    FOREIGN KEY (KategorieID) REFERENCES Kategorie(ID)
);

CREATE TABLE Film_Herec (
    FilmID INTEGER,
    HerecID INTEGER,
    PRIMARY KEY (FilmID, HerecID),
    FOREIGN KEY (FilmID) REFERENCES Film(ID),
    FOREIGN KEY (HerecID) REFERENCES Herec(ID)
);

CREATE TABLE Film_Oceneni (
    FilmID INTEGER,
    OceneniID INTEGER,
    PRIMARY KEY (FilmID, OceneniID),
    FOREIGN KEY (FilmID) REFERENCES Film(ID),
    FOREIGN KEY (OceneniID) REFERENCES Oceneni(ID)
);


ALTER TABLE Film ADD CONSTRAINT FK_Film_Kategorie FOREIGN KEY (ID_kategorie) REFERENCES Kategorie(ID);

CREATE FUNCTION NejdelsiFilmVKategorii (@kategorie nvarchar(50))
RETURNS int
AS
BEGIN
DECLARE @delka int;
SELECT TOP 1 @delka = Delka
FROM Film
WHERE ID_kategorie = (SELECT ID FROM Kategorie WHERE Nazev = @kategorie)
ORDER BY Delka DESC;
RETURN @delka;
END;

CREATE PROCEDURE VymazaniKategoriiBezFilmu
AS
BEGIN
DELETE FROM Kategorie
WHERE NOT EXISTS (SELECT 1 FROM Film WHERE ID_kategorie = Kategorie.ID);
END;

CREATE VIEW Film_Herci AS
SELECT f.Nazev, COUNT(fh.ID_herec) AS Pocet_hercu
FROM Film f
LEFT JOIN Film_Herec fh ON f.ID = fh.ID_film
GROUP BY f.ID;

