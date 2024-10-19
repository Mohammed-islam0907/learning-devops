# app.py

from flask import Flask 
import redis

app = Flask(__name__)


r = redis.Redis(
        host='redis', 
        port=6379, 
        decode_responses=True,
        db=0
) 

@app.route('/')
def greetings():
    return 'Welcome to my Redis Flask App!!'

@app.route('/count')
def count():
    count = r.incr('visitors')
    return f'This page has been visited {count} times.'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
