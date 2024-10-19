# app.py

from flask import Flask, render_template
import redis

app = Flask(__name__)

# Initialize Redis connection
r = redis.Redis(
    host='redis', 
    port=6379, 
    decode_responses=True,
    db=0
) 

@app.route('/')
def greetings():
    # Render template without additional content
    return render_template('layout.html')

@app.route('/count')
def count():
    # Increment visitor count and pass it to the template
    visit_count = r.incr('visitors')
    return render_template('layout.html', content=f'This page has been visited {visit_count} times.')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
