import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  static AudioCache player = AudioCache();
  void soundButton(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({color: Colors, int soundName}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          soundButton(soundName);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundName: 1),
            buildKey(color: Colors.orange, soundName: 2),
            buildKey(color: Colors.yellow, soundName: 3),
            buildKey(color: Colors.green, soundName: 4),
            buildKey(color: Colors.teal, soundName: 5),
            buildKey(color: Colors.blue, soundName: 6),
            buildKey(color: Colors.purple, soundName: 7),
          ],
        ),
      ),
    );
  }
}
