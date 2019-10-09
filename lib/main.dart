import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset(
          'images/ball$ballNumber.png',
          gaplessPlayback: true,
        ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('ASK ME ANYTHING'),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}
