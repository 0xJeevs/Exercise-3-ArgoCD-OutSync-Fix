from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/health')
def health():
    return jsonify({"status": "healthy", "version": "v2"})

@app.route('/payment')
def payment():
    return jsonify({"message": "Payment Successfull", "version": "v2"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
