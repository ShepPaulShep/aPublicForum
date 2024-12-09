from flask import Flask, request, jsonify
import logging

# Bluesky API
from atproto import Client
 
# bsky login info DONT STEAL >:/
username = "YOURUSERNAMEHERE.bsky.social"
password = "YOURPASSWORDHERE"
client = Client()
client.login(username, password)

data = "null"
txt = open("test.txt", "a")
msg = "Nothing yet"

app = Flask(__name__)

@app.route('/submit', methods=['POST'])
def submit():
    if request.method == 'POST':
        if request.form:
            print(request.form.get('sky'))
        elif request.is_json:
            data = request.get_json()
            print(data)
            print(data["sky"])
            msg = data["sky"]
            bSend = client.send_post(msg)
            return jsonify({"message": "Data received", "data": data}), 200

print(data)
print(msg)

if __name__ == '__main__':
    app.run()
