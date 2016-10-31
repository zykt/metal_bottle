from bottle import Bottle, template, static_file, run


app = Bottle()


@app.route('/')
def default():
    names = ['Iron Maiden', 'Alrakis', 'Brocas Helm', 'Ea']
    return template('index', names=names)


@app.route('/<band_name>')
def band_page(band_name):
    return template('band_page', band_name=band_name)


@app.route('/static/<file_name>')
def static(file_name):
    return static_file(filename=file_name, root=r'C:\Users\ian\PycharmProjects\metal_bottle\static')


run(app, host='localhost', port=8080)