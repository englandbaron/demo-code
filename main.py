from flask import Flask, Response
import time
import os

from business.v1 import APIV1

app = Flask(__name__)

@app.route('/api/v1/index')
def index():
    return Response(APIV1().v1_index(), mimetype="application/json")
    
@app.route('/healthz')
def quit():
    return 'pong'
