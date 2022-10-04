import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Magic Ball',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: const MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = Random().nextInt(5) + 1;
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () async {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                  });
                  String audioasset = "assets/note$ballNumber.wav";
                  ByteData bytes = await rootBundle
                      .load(audioasset); //load sound from assets
                  Uint8List soundbytes = bytes.buffer
                      .asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                  int result = await player.playBytes(soundbytes);
                  if (result == 1) {}
                },
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
