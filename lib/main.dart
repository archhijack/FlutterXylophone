import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded mainFunc({Color color, int note}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(note);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                mainFunc(color: Colors.red, note: 1),
                mainFunc(color: Colors.orange, note: 2),
                mainFunc(color: Colors.yellow, note: 3),
                mainFunc(color: Colors.green, note: 4),
                mainFunc(color: Colors.teal, note: 5),
                mainFunc(color: Colors.blue, note: 6),
                mainFunc(color: Colors.purple, note: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
