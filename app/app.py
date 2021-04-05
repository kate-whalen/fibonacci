from flask import Flask, jsonify


app = Flask(__name__)


def fibonacci():
    x, y = 0, 1
    for _ in iter(int, 1):
        current = x
        x, y = y, x + y
        yield current


reader = fibonacci()


@app.route('/')
def home():
    return jsonify(next(reader))
