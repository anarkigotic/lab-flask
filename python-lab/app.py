from flask import Flask

app = Flask(__name__)

# hola
@app.route("/")
def hello_world():
    return "Hola Mundo! Juan latest"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)