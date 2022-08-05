from flask import Flask, jsonify
import socket

app = Flask(__name__)
@app.route('/api/endpoint', methods=['GET'])
def get_data():
    return (jsonify({'message': 'recived'}), 200)

@app.route('/', methods=['GET'])
def get_root():
    return (f'My IP: {socket.gethostbyname(socket.gethostname())}', 200)

if __name__ == '__main__':
    app.run(host='0.0.0.0')
