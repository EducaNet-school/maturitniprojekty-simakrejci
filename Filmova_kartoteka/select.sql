SELECT film.nazev, COUNT(filmh.herec_id) AS pocet_hercu
FROM Film film
         LEFT JOIN filmova_kartoteka_Herec fh ON f.id = filmh.film_id
GROUP BY film.id

SELECT filmova_kartoteka_herec.jmeno, filmova_kartoteka_herec.prijmeni, COALESCE(film.nazev, 'NEHRAJE') AS film
FROM Herec h
         LEFT JOIN Film_Herec fh ON h.id = fh.herec_id
         LEFT JOIN Film f ON fh.film_id = f.id
ORDER BY h.prijmeni, h.jmeno


SELECT filmova_kartoteka_kategorie.nazev AS kategorie, film.nazev AS film, film.delka
FROM Kategorie k
         LEFT JOIN Film_Kategorie fk ON k.id = fk.kategorie_id
         LEFT JOIN Film f ON fk.film_id = f.id
WHERE f.delka = (
    SELECT MAX(delka)
    FROM Film f2
             INNER JOIN Film_Kategorie fk2 ON f2.id = fk2.film_id
    WHERE fk2.kategorie_id = k.id
)


SELECT film.nazev AS film, COUNT(fo.oceneni_id) AS pocet_ocenení
FROM Film f
         LEFT JOIN Film_Oceneni fo ON f.id = fo.film_id
GROUP BY f.id
ORDER BY COUNT(fo.oceneni_id) DESC;


SELECT DISTINCT filmova_kartoteka_herec.jmeno, filmova_kartoteka_herec.prijmeni
FROM Herec h
         JOIN Film_Herec fh ON h.id = filmova_kartoteka_herec.herec_id
         JOIN Film_Kategorie fk ON filmova_kartoteka_herec.film_id = fk.film_id
         JOIN Kategorie k ON filmova_kartoteka_herec.kategorie_id = k.id AND k.nazev = 'Comedy';
