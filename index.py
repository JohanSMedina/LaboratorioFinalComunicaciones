# .\lab\Scripts\activate
from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL

app = Flask(__name__)

##Conexion con MySQL
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'password'
app.config['MYSQL_DB'] = 'labcominicaciones'
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
           nombre = request.form['nombre']
           uid = request.form['uid']
           saldo = request.form['saldo']

           cur = mysql.connection.cursor()##OBTENER CONECCION
           
           cur.execute("INSERT INTO tarjetas (nombre, uid, saldo) VALUES (%s,%s,%s)", (nombre, uid, saldo))##ESCRIBIMOS CONSULTA

           mysql.connection.commit()##Ejecutar consulta
           flash('Contact Added successfully')
        
           return redirect(url_for('agregar'))

        

if __name__ == '__main__':
    app.run(debug=True)