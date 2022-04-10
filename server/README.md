# Flutteresh Bot Server

The server side code for Flutteresh Twitter Bot. 

## ⚙️ Setup 

1. At first you might want to add the following to your `.env` file:

```conf
CONSUMER_KEY=ABCDEFGHIJKLMNOPQRSTUVWXYZ
CONSUMER_SECRET=1234567890:ABCDEFGHIJKLMNOPQRSTUVWXYZ
ACCESS_TOKEN=0987654321:ZYXWVUTSRQPONMLKJIHGFEDCBA
ACCESS_TOKEN_SECRET=A1B2c3d4E5F6g7h8i9j0k1l2m3n4
```

2. Run `npm install` and `npm start` to start the server.
3. The server will start listening on port 3000.


## 🦄 Try It Out

Now make request to `http://localhost:3000/` with a query parameter `message` tweet the message.

Example: https://localhost:3000/?message=Hello%20World 🦄


# Thank You ❤️