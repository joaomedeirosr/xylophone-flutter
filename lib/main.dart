import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded botoes({Color color, int soundNumber}) {
  return (Expanded(
    child: Container(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    ),
  ));
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              botoes(color: Colors.red, soundNumber: 1),
              botoes(color: Colors.orange, soundNumber: 2),
              botoes(color: Colors.yellow, soundNumber: 3),
              botoes(color: Colors.green, soundNumber: 4),
              botoes(color: Colors.blue, soundNumber: 5),
              botoes(color: Colors.indigo, soundNumber: 6),
              botoes(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
