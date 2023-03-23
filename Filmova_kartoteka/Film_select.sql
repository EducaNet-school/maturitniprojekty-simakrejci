SELECT f.nazev, COUNT(fh.id_herec) AS pocet_hercu
FROM film f
JOIN film_herec fh ON f.id = fh.id_film
GROUP BY f.id;

SELECT h.jmeno, h.prijmeni, COALESCE(f.nazev, 'NEHRAJE V ZADNEM FILMU') AS nazev_filmu
FROM herec h
LEFT JOIN film_herec fh ON h.id = fh.id_herec
LEFT JOIN film f ON fh.id_film = f.id;

SELECT f.nazev, f.delka, k.nazev AS kategorie
FROM (
  SELECT id_kategorie, MAX(delka) AS delka
  FROM film
  GROUP BY id_kategorie
) max_delka
JOIN film f ON f.id_kategorie = max_delka.id_kategorie AND f.delka = max_delka.delka
JOIN kategorie k ON f.id_kategorie = k.id;

SELECT f.nazev, COUNT(fo.id) AS pocet_oceneni
FROM film f
LEFT JOIN film_oceneni fo ON f.id = fo.id_film
GROUP BY f.id
ORDER BY pocet_oceneni DESC;

SELECT h.Jmeno, h.Prijmeni
FROM Herec h
INNER JOIN Film_Herec fh ON h.ID = fh.ID_herec
INNER JOIN Film f ON fh.ID_film = f.ID
INNER JOIN Film_Kategorie fk ON f.ID = fk.ID_film
INNER JOIN Kategorie k ON fk.ID_kategorie = k.ID AND k.Nazev = 'Komedie';