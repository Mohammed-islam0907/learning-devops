# app.py

from flask import Flask 
import redis

app = Flask(__name__)

# Greeting message
@app.route('/')
def greetings():
    # Connect to Redis server
r = redis.Redis(
    host='localhost', 
    port=6379, 
    decode_responses=True
    db="0"
) #Copy and paste from Redis.io
    return 'Welcome to my Redis Flask App!!'

@app.route('count')
def counter():
    count = r.incr('visitors')
    return f'This page has been visited {count} times.'


if __name__ == '__main__'
    app.run(host='0.0.0.0', port=5001)
