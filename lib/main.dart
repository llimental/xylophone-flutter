import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){ // input값 사용
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNum) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
        ),
        onPressed: () {
          playSound(soundNum); // 값 전달
        },
        child: Container(), // TextButton은 child가 필요함
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
            children: <Widget>[
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7),
            ],
          ),
        ),
      ),
    );
  }
}