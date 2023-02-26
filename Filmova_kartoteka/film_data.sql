
INSERT INTO `film` (`id`, `nazev`, `popis`, `delka`, `datum_vydani`) VALUES
                                                                         (1, 'Mission: Impossible - Fallout', 'Ethan Hunt and his IMF team race against time to recover stolen plutonium', 147, '2018-07-12'),
                                                                         (2, 'The Devil Wears Prada', 'A young woman lands a job as an assistant to a powerful fashion magazine editor', 109, '2006-06-30'),
                                                                         (3, 'The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son', 175, '1972-03-24'),
                                                                         (4, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology', 148, '2010-07-16'),
                                                                         (5, 'Interstellar', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival', 169, '2014-11-07'),
(6, 'Jumanji: Welcome to the Jungle', 'Four teenagers are sucked into a magical video game, and the only way they can escape is to work together', 119, '2017-12-20');



INSERT INTO `filmova_kartoteka_herec` (`id`, `jmeno`, `prijmeni`) VALUES
(1, 'Tom', 'Cruise'),
(2, 'Meryl', 'Streep'),
(3, 'Robert', 'De Niro'),
(4, 'Leonardo', 'DiCaprio'),
(5, 'Angelina', 'Jolie'),
(6, 'Dwayne', 'Johnson'),
(7, 'Gal', 'Gadot'),
(8, 'Jennifer', 'Lawrence');

INSERT INTO `filmova_kartoteka_kategorie` (`id`, `nazev`, `popis`) VALUES
(1, 'Action', 'Movies with high intensity action scenes'),
(2, 'Comedy', 'Movies that are meant to be funny'),
(3, 'Drama', 'Movies with serious or intense themes'),
(4, 'Sci-Fi', 'Movies with futuristic or scientific themes');


INSERT INTO `filmova_kartoteka_oceneni` (`id`, `nazev`, `popis`, `datum`, `misto`) VALUES
(1, 'Oscar for Best Picture', 'Award for Best Picture at the Academy Awards', '2022-03-27', 'Los Angeles'),
(2, 'Golden Globe for Best Actress', 'Award for Best Actress at the Golden Globe Awards', '2022-01-09', 'Beverly Hills'),
(3, 'Cannes Film Festival Palme d\'Or', 'Award for Best Picture at the Cannes Film Festival', '2022-05-22', 'Cannes');

INSERT INTO `filmova_kartoteka_herec` (`film_id`, `herec_id`) VALUES
                                                     (1, 1),
                                                     (1, 5),
                                                     (2, 2),
                                                     (2, 8),
                                                     (3, 2),
                                                     (3, 3),
                                                     (4, 2),
                                                     (4, 3),
                                                     (4, 4),
                                                     (4, 8),
                                                     (5, 2),
                                                     (5, 4),
                                                     (6, 6),
                                                     (6, 7),
                                                     (6, 8);


INSERT INTO `filmova_kartoteka_kategorie` (`film_id`, `kategorie_id`) VALUES
                                                             (1, 1),
                                                             (1, 2),
                                                             (2, 2),
                                                             (2, 3),
                                                             (3, 3),
                                                             (3, 4),
                                                             (4, 1),
                                                             (4, 4),
                                                             (5, 4),
                                                             (6, 1),
                                                             (6, 2),
                                                             (6, 4);

INSERT INTO `filmova_kartoteka_oceneni` (`film_id`, `oceneni_id`) VALUES
                                                         (1, 1),
                                                         (2, 2),
                                                         (3, 3),
                                                         (4, 1),
                                                         (5, 1),
                                                         (5, 3),
                                                         (6, 2);



COMMIT;
