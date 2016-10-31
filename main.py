from bottle import Bottle, template, static_file, run
from tinydb import TinyDB


app = Bottle()

db = TinyDB('db/db.json')


def create_band(name, description):
    return {
        'name': name,
        'description': description,
    }


@app.route('/')
def default():
    bands = db.all()
    return template('index', bands=bands)


@app.route('/<band_name>')
def band_page(band_name):
    return template('band_page', band_name=band_name)


@app.route('/static/<file_name>')
def static(file_name):
    return static_file(filename=file_name, root=r'C:\Users\ian\PycharmProjects\metal_bottle\static')


run(app, host='localhost', port=8080)
