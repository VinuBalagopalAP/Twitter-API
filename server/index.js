require("dotenv/config");
const Twit = require("twit");
const express = require("express");

const app = express();

const bot = new Twit({
    consumer_key: process.env.CONSUMER_KEY,
    consumer_secret: process.env.CONSUMER_SECRET,
    access_token: process.env.ACCESS_TOKEN,
    access_token_secret: process.env.ACCESS_TOKEN_SECRET,
    timeout_ms: 60 * 1000,
});


async function postTwist(message) {
    try {
        const tweet = await bot.post("statuses/update", {
            status: message,
        });
        console.log("Tweet posted: ", tweet.data.text);
        return true;
    } catch (err) {
        console.error("Error occured!");
        console.log(err);
        return false;
    }
}

app.get("/", async (req, res) => {
    // get the message from the query string 'message'
    const message = req.query.message;

    if (!message) {
        return res.status(400).json({
            error: "Message is required",
            status: false,
            code: 400,
        });
    }

    // post it to twitter
    const result = await postTwist(message);

    if (result) {
        return res.status(200).json({
            message: "Tweet posted successfully",
            status: true,
            tweet: message,
            code: 200,
        });
    } else {
        return res.status(500).json({
            error: "Error occured",
            status: false,
            code: 500,
        });
    }
});


app.listen(process.env.PORT || 3000, () => {
    console.log("Server started! On port http://localhost:3000");
});