INSERT INTO Film (ID, Nazev, Popis, Delka, DatumVydani) VALUES
(1, 'Pulp Fiction', 'Příběhy zločinců v Los Angeles', 154, '1994-09-23'),
(2, 'The Godfather', 'Příběh rodiny Corleoneů', 175, '1972-03-24'),
(3, 'The Shawshank Redemption', 'Příběh Andyho Dufresneho', 142, '1994-10-14'),
(4, 'The Dark Knight', 'Batman proti Jokerovi', 152, '2008-07-18'),
(5, 'Forrest Gump', 'Život Forresta Gumpa', 142, '1994-07-06');

INSERT INTO Kategorie (ID, Nazev) VALUES
(1, 'Krimi'),
(2, 'Drama'),
(3, 'Akční'),
(4, 'Romantický');

INSERT INTO Herec (ID, Jmeno, Prijmeni) VALUES
(1, 'John', 'Travolta'),
(2, 'Marlon', 'Brando'),
(3, 'Tim', 'Robbins'),
(4, 'Morgan', 'Freeman'),
(5, 'Christian', 'Bale'),
(6, 'Tom', 'Hanks'),
(7, 'Robin', 'Wright'),
(8, 'Gary', 'Sinise');

INSERT INTO Oceneni (ID, Nazev, Popis, Datum, Misto) VALUES
(1, 'Oscar', 'Nejlepší herec v hlavní roli', '1995-03-27', 'Los Angeles'),
(2, 'Golden Globe', 'Nejlepší film - drama', '1973-01-28', 'Los Angeles'),
(3, 'BAFTA', 'Nejlepší film', '2009-02-08', 'Londýn');

INSERT INTO Film_Kategorie (FilmID, KategorieID)
