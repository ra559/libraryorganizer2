from typing import List, Dict
import mysql.connector
import simplejson as json
from flask import Flask, Response, redirect, url_for, render_template

app = Flask(__name__)


def liborg() -> List[Dict]:
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'liborg'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(dictionary=True)

    cursor.execute('SELECT * FROM books')
    result = cursor.fetchall()

    cursor.close()
    connection.close()

    return result


@app.route('/')
def home():
    return render_template("index.html", content='Testing')


if __name__ == '__main__':
    app.run(debug=True)
