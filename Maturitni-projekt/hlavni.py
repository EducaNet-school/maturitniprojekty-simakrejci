import sqlite3
from flask import Flask, render_template, redirect, url_for

app = Flask(__name__) #vytvoří flaskové prostředí

#Připojení do databáze
def get_db_connection():
    conn = sqlite3.connect('database.db')
    conn.row_factory = sqlite3.Row
    return conn


@app.route("/")
def index():
    return render_template("index.html")
    #return "Ahoooooj"



@app.route("/info")
def info():
    return render_template("info.html")

@app.route("/o_projektu")
def o_projektu():
    return render_template("o_projektu.html")

@app.route("/login")
def login():
    return render_template("login.html")

@app.route("/index")
def index():
    return render_template("index.html")


@app.route("/instruktori")
def instruktori():
  #vytvořím propojení
  conn = get_db_connection()
  #vytvořím proměnou do které si načtu data
  instruktori = conn.execute('SELECT * FROM instruktor').fetchall()
  #volání instruktori.html a předání dat o instruktorech
  return render_template('instruktori.html', data_pro_web=instruktori)
  conn.close()



