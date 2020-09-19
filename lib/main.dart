import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

 Expanded buildKey({Color color, int soundNumber, String note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          '$note',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

                buildKey(color: Colors.red, soundNumber: 1,note: 'C'),
              buildKey(color: Colors.orange, soundNumber: 2,note: 'D'),
              buildKey(color: Colors.yellow, soundNumber: 3,note: 'E'),
              buildKey(color: Colors.green, soundNumber: 4,note: 'F'),
              buildKey(color: Colors.teal, soundNumber: 5,note: 'G'),
              buildKey(color: Colors.blue, soundNumber: 6,note: 'A'),
              buildKey(color: Colors.indigo, soundNumber: 7,note: 'B'),
              buildKey(color: Colors.purple, soundNumber: 8,note: 'C'),

            ],
          ),
        ),
      ),
    );
  }
}
