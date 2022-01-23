import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){ // input값 사용
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                ),
                onPressed: () {
                 playSound(1); // 값 전달
                },
                child: Container(), // TextButton은 child가 필요함
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)
                ),
                onPressed: () {
                  playSound(2);
                },
                child: Container(),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)
                ),
                onPressed: () {
                  playSound(3);
                },
                child: Container(),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                ),
                onPressed: () {
                  playSound(4);
                },
                child: Container(),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.teal)
                ),
                onPressed: () {
                  playSound(5);
                },
                child: Container(),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                ),
                onPressed: () {
                  playSound(6);
                },
                child: Container(),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.purple)
                ),
                onPressed: () {
                  playSound(7);
                },
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
