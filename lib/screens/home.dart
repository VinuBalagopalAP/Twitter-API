import 'package:app_wanna_tweet/utlis/theme.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://miro.medium.com/proxy/1*8mpWApzQD5gZZlnYYUkbcA.png",
              width: 200,
              height: 200,
              alignment: Alignment.bottomCenter,
            ),
            const SizedBox(height: 50),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Message to tweet:",
                style: TextStyle(
                  fontSize: 20,
                  color: TwitterBotTheme.blueColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: TwitterBotTheme.blueColor,
                  width: 1,
                ),
                color: Colors.white38,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your message here",
                ),
                minLines: 1,
                maxLines: 4,
              ),
            ),
            const SizedBox(height: 10),
            Align(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: TwitterBotTheme.blueColor,
                  ),
                  onPressed: () {},
                  child: const Text("Tweet"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
