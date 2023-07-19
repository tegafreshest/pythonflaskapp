from flask import Flask, jsonify
import time


app = Flask(__name__)

app.route("/")
def hello_world():
    return jsonify ({"Time to call": time.time()})

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)


