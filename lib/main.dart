import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({
    Color color,
    int soundNumber,
  }) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                color: Colors.red,
                soundNumber: 1,
              ),
              buildKey(
                color: Colors.green,
                soundNumber: 2,
              ),
              buildKey(
                color: Colors.blue,
                soundNumber: 3,
              ),
              buildKey(
                color: Colors.teal,
                soundNumber: 4,
              ),
              buildKey(
                color: Colors.grey,
                soundNumber: 5,
              ),
              buildKey(
                color: Colors.purple,
                soundNumber: 6,
              ),
              buildKey(
                color: Colors.amber,
                soundNumber: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
