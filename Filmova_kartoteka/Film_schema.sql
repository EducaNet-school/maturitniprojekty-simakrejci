
CREATE DATABASE filmova_kartoteka;


CREATE TABLE `film` (
                        `id` int(11) NOT NULL,
                        `nazev` varchar(255) DEFAULT NULL,
                        `popis` text DEFAULT NULL,
                        `delka` int(11) DEFAULT NULL,
                        `datum_vydani` date DEFAULT NULL
);

CREATE TABLE `filmova_kartoteka_herec` (
                              `film_id` int(11) NOT NULL,
                              `herec_id` int(11) NOT NULL
);


CREATE TABLE `filmova_kartoteka_kategorie` (
                                  `film_id` int(11) NOT NULL,
                                  `kategorie_id` int(11) NOT NULL
);

CREATE TABLE `filmova_kartoteka_oceneni` (
                                `film_id` int(11) NOT NULL,
                                `oceneni_id` int(11) NOT NULL
);


CREATE TABLE `filmova_kartoteka_herec` (
                         `id` int(11) NOT NULL,
                         `jmeno` varchar(255) DEFAULT NULL,
                         `prijmeni` varchar(255) DEFAULT NULL
);


CREATE TABLE `filmova_kartoteka_kategorie` (
                             `id` int(11) NOT NULL,
                             `nazev` varchar(255) DEFAULT NULL,
                             `popis` text DEFAULT NULL
);


CREATE TABLE `filmova_kartoteka_oceneni` (
                           `id` int(11) NOT NULL,
                           `nazev` varchar(255) DEFAULT NULL,
                           `popis` text DEFAULT NULL,
                           `datum` date DEFAULT NULL,
                           `misto` varchar(255) DEFAULT NULL
);

ALTER TABLE `film`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `filmova_kartoteka_herec`
    ADD PRIMARY KEY (`film_id`,`herec_id`),
  ADD KEY `herec_id` (`herec_id`);

ALTER TABLE `filmova_kartoteka_kategorie`
    ADD PRIMARY KEY (`film_id`,`kategorie_id`),
  ADD KEY `kategorie_id` (`kategorie_id`);

ALTER TABLE `filmova_kartoteka_oceneni`
    ADD PRIMARY KEY (`film_id`,`oceneni_id`),
  ADD KEY `oceneni_id` (`oceneni_id`);

ALTER TABLE `filmova_kartoteka_herec`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `filmova_kartoteka_kategorie`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `filmova_kartoteka_oceneni`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `filmova_kartoteka_herec`
    ADD CONSTRAINT `filmova_kartoteka_herec` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `filmova_kartoteka_herec` FOREIGN KEY (`filmova_kartoteka_herec_id`) REFERENCES `herec` (`id`);


ALTER TABLE `filmova_kartoteka_kategorie`
    ADD CONSTRAINT `filmova_kartoteka_kategorie` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `filmova_kartoteka_kategorie` FOREIGN KEY (`filmova_kartoteka_kategorie_id`) REFERENCES `kategorie` (`id`);


ALTER TABLE `film_oceneni`
    ADD CONSTRAINT `filmova_kartoteka_oceneni` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `filmova_kartoteka_oceneni` FOREIGN KEY (`filmova_kartoteka_oceneni_id`) REFERENCES `oceneni` (`id`);
COMMIT;
