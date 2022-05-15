# .\lab\Scripts\activate
from flask import Flask, render_template

app=Flask(__name__)

@app.route('/')
def home ():
    return render_template('tienda.html')

@app.route('/banda')
def about ():
    return render_template('banda.html')

if __name__ == '__main__':
    app.run(debug=True)