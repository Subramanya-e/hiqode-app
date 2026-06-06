from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "<h1>Welcome to HiQode Web App!</h1><p>Managed securely via CI/CD pipeline.</p>"

if __name__ == '__main__':
    # We run on port 3000 because that matches our Dockerfile configuration
    app.run(host='0.0.0.0', port=3000)
