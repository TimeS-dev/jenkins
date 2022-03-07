#!/usr/bin/python
from flask import Flask
import os
build = os.environ['env_build']
app = Flask(__name__)
@app.route('/', methods=['POST', 'GET'])
def home():
    return "<p>Hello, World!<p>build number: "+build
if __name__=="__main__":
    app.run(debug=True, host='0.0.0.0', port='5000')