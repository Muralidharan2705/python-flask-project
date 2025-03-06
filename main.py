from flask import Flask
import platform

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello World!"

if __name__ == '__main__':
    # Run Flask on port 9001
    app.run(host='0.0.0.0', port=9001)
