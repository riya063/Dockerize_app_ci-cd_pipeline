from flask import flask
 
app= Flask(__name__)

@app.route('/')
def home():
    return "Hi from a Dockerized flask application"

if __name__=='__main__':
    app.run(host:0.0.0.0,port:5000)