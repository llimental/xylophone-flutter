import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){ // input값 사용
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color)
        ),
        onPressed: () {
          playSound(soundNumber); // 값 전달
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
              buildKey(color: Colors.red[200], soundNumber: 1),
              buildKey(color: Colors.orange[200], soundNumber: 2),
              buildKey(color: Colors.yellow[200], soundNumber: 3),
              buildKey(color: Colors.green[200], soundNumber: 4),
              buildKey(color: Colors.teal[200], soundNumber: 5),
              buildKey(color: Colors.blue[200], soundNumber: 6),
              buildKey(color: Colors.purple[200], soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}