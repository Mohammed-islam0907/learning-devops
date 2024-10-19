# app.py

from flask import Flask 
import redis

app = Flask(__name__)

# Connect to Redis server
r = redis.Redis(host='localhost', port=6379, decode_responses=True) #Copy and paste from Redis.io

# Greeting message
@app.route('/')
def greetings():
    return 'Welcome to my Flask App!!'

@app.route('count')
def counter():
    count = r.incr('visitors')
    return f'This page has been visited {count} times.'


if __name__ == '__main__'
    app.run(host='0.0.0.0', port=5001)
    