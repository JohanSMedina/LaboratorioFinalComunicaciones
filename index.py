# .\lab\Scripts\activate
# pip install flask flask-mysqldb
from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL

app = Flask(__name__)

##Conexion con MySQL
app.config['MYSQL_HOST'] = 'sql10.freesqldatabase.com'
app.config['MYSQL_USER'] = 'sql10493361'
app.config['MYSQL_PASSWORD'] = 'LRcna74KIU'
app.config['MYSQL_DB'] = 'sql10493361'
mysql =MySQL(app)

#Configuracion
app.secret_key = "mysecretkey"

@app.route('/')
def home ():
    return render_template('tienda.html')

@app.route('/banda')
def about ():
    return render_template('banda.html')

@app.route('/agregar')
def agregar ():
    return render_template('agregar.html')

@app.route('/add_tar', methods=['POST'])
def add_tar ():
    if request.method == 'POST':
           nombre = request.form['nombre']##Extraer los datos de la pag
           uid = request.form['uid']
           saldo = request.form['saldo']

           cur = mysql.connection.cursor()##OBTENER CONECCION
           
           cur.execute("INSERT INTO tarjetas (nombre, uid, saldo) VALUES (%s,%s,%s)", (nombre, uid, saldo))##ESCRIBIMOS CONSULTA

           mysql.connection.commit()##Cargar a la BD
           flash('Tarjeta agregada correctamente')
        
           return redirect(url_for('agregar'))

@app.route('/add_pin', methods=['POST'])
def add_pin():
    if request.method == 'POST':
            uid = request.form['uidPin']
            dulce = request.form['dulce']

            cur = mysql.connection.cursor()##OBTENER CONECCION

            cur.execute("INSERT INTO pines (uid, dulce) VALUES (%s,%s)", (uid, dulce))##ESCRIBIMOS CONSULTA

            mysql.connection.commit()##Cargar a la BD
            flash('Pin agregado correctamente')

            return redirect(url_for('agregar'))
        

if __name__ == '__main__':
    app.run(debug=True)



# FreeDataBase
#johanmedina877@gmail.com
#JMedR
#Host: sql10.freesqldatabase.com
#Database name: sql10493361
#Database user: sql10493361
#Database password: LRcna74KIU
#Port number: 3306
#https://www.phpmyadmin.co/db_structure.php?server=1&db=sql10493361

