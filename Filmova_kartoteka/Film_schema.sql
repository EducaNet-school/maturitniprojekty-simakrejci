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
