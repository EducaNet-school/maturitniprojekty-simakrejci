class Film:
    def __init__(self, nazev, cena, vekova_hranice):
        self.nazev = nazev
        self.cena = cena
        self.vekova_hranice = vekova_hranice

class Divak:
    def __init__(self, jmeno, prijmeni, vek, penize):
        self.jmeno = jmeno
        self.prijmeni = prijmeni
        self.vek = vek
        self.penize = penize

class Kino:
    def ProdejLístku(self, film, divak):
        if divak.vek < film.vekova_hranice:
            raise Exception("CustomerTooYoungException")
        if divak.penize < film.cena:
            raise Exception("MissingMoneyException")
        print("Prodáno")

film = Film("Matrix", 200, 18)
divak = Divak("Jan", "Novák", 25, 150)

kino = Kino()
try:
    kino.ProdejLístku(film, divak)
except Exception as e:
    print("Chyba: " + str(e))
