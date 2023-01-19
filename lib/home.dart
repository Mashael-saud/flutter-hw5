import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var count = 0;
  var heartColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2552a9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '$count',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 60, color: Colors.white),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              child: const Text(
                'سبح',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 60, color: Colors.white),
              ),
            ),
            InkWell(
              onTap: () {
                if (heartColor == Colors.white) {
                  setState(() {
                    heartColor = Colors.red;
                  });
                } else {
                  setState(() {
                    heartColor = Colors.white;
                  });
                }
              },
              child: Icon(
                Icons.favorite,
                color: heartColor,
                size: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
