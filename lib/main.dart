import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: BallPage());
  }
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0D47A1),
        title: const Text('Ask Me Anything'),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff64B5F6),
      body: const SafeArea(child: Ball()),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

int ballNumber = 1;

void randomNum() {
  ballNumber = Random().nextInt(5) + 1;
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            setState(() {
              randomNum();
              debugPrint('$ballNumber');
            });
          },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
