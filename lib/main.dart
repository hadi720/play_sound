import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildKey({Color color, int SoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(SoundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.white, SoundNumber: 1),
              buildKey(color: Colors.black, SoundNumber: 2),
              buildKey(color: Colors.white, SoundNumber: 3),
              buildKey(color: Colors.black, SoundNumber: 4),
              buildKey(color: Colors.white, SoundNumber: 5),
              buildKey(color: Colors.black, SoundNumber: 6),
              buildKey(color: Colors.white, SoundNumber: 7),
              buildKey(color: Colors.black, SoundNumber: 5),
              buildKey(color: Colors.white, SoundNumber: 2),
              buildKey(color: Colors.black, SoundNumber: 6),
            ],
          ),
        ),
      ),
    );
  }
}
