import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Ask Me Anything ?",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: SafeArea(
          child: MagicBallCreator(),
        ),
      ),
    );
  }
}

class MagicBallCreator extends StatefulWidget {
  @override
  _MagicBallCreatorState createState() => _MagicBallCreatorState();
}

class _MagicBallCreatorState extends State<MagicBallCreator> {
  int ballNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
