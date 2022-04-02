import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int n) {}

  Expanded buildKey(int n, MaterialStateProperty<Color> color, String note) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$n.wav');
        },
        style: ButtonStyle(
            backgroundColor: color),
        child: Text(
          note,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, MaterialStateProperty.all(Colors.red), 'C'),
                buildKey(2, MaterialStateProperty.all(Colors.orange), 'D'),
                buildKey(3, MaterialStateProperty.all(Colors.yellow), 'E'),
                buildKey(4, MaterialStateProperty.all(Colors.green), 'F'),
                buildKey(5, MaterialStateProperty.all(Colors.lightBlueAccent), 'G'),
                buildKey(6, MaterialStateProperty.all(Colors.indigo), 'A'),
                buildKey(7, MaterialStateProperty.all(Colors.purple), 'B'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
