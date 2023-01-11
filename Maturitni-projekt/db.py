import sqlite3

#Připojení do databáze
def get_db_connection():
    conn = sqlite3.connect('database.db')
    conn.row_factory = sqlite3.Row
    return conn
conn = get_db_connection()
cur = conn.cursor()

"""
sql = "create table user(id integer primary key autoincrement, name text not null);"
#Odešlu tu proměnou sql
cur.execute(sql)

#Potvrdím že to opravdu chci udělat
conn.commit()

sql = "insert into user (name) values ('Simon');"
cur.execute(sql)

conn.commit()

vysledek = conn.execute("select * from user")
print(vysledek)
"""

def vytvor_tabulky():
    student = "create table if not exists student (id_s integer primary key autoincrement not null, jmeno text, prijmeni text, datum_narozeni text, telefon text, email text);"
    cur.execute(student)
    conn.commit()
    print("Byla vytvořen tabulka student!")

    instruktor = "create table if not exists instruktor (id_i integer primary key autoincrement not null, jmeno text, prijmeni text, datum_narozeni text, telefon text, email text, cena_za_hodinu integer, cislo_uctu text);"
    cur.execute(instruktor)
    conn.commit()
    print("Byla vytvořen tabulka instruktor!")

    certifikace = "create table if not exists certifikace (id_c integer primary key autoincrement not null, nazev text, licence text);"
    cur.execute(certifikace)
    conn.commit()
    print("Byla vytvořen tabulka certifikace!")

    vlastnim_certifikaci = "create table if not exists vlastnim_certifikaci (id_s integer, id_i integer, id_c integer, foreign key(id_s)references student(id_s), foreign key(id_i)references instruktor(id_i), foreign key(id_c)references certifikace(id_c));"
    cur.execute(vlastnim_certifikaci)
    conn.commit()
    print("Byla vytvořen tabulka vlastnim_certifikaci!")

    misto = "create table if not exists misto (id_m integer, ulice text, mesto text, cislo_popisne integer, smerovaci_cislo integer);"
    cur.execute(misto)
    conn.commit()
    print("Byla vytvořen tabulka misto!")

    lekce = "create table if not exists lekce (id_l integer, nazev text, popis text, delka_trvani text, datum text, oduceno integer, id_s integer, id_m integer, id_i integer, foreign key(id_s)references student(id_s), foreign key(id_m)references misto(id_m), foreign key(id_i) references instruktor(id_i));"
    cur.execute(lekce)
    conn.commit()
    print("Byla vytvořen tabulka lekce!")

vytvor_tabulky()


