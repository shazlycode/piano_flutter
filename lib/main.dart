import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget material(int no, Color color) {
    return GestureDetector(
      onTap: () {
        final player = AudioCache();
        player.play("note$no.wav");
      },
      child: Container(
        child: Text(''),
        color: color,
      ),
    );
  }

  void playAudio(int no) {
    final player = AudioCache();
    player.play("note$no.wav");
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
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      playAudio(1);
                    });
                  },
                  child: Container(
                    color: Colors.red,
                  )),
            ),
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      playAudio(2);
                    });
                  },
                  child: Container(
                    color: Colors.pinkAccent,
                  )),
            ),
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      playAudio(4);
                    });
                  },
                  child: Container(
                    color: Colors.orangeAccent,
                  )),
            ),
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      playAudio(5);
                    });
                  },
                  child: Container(
                    color: Colors.green,
                  )),
            ),
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      playAudio(5);
                    });
                  },
                  child: Container(
                    color: Colors.blue,
                  )),
            ),
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      playAudio(6);
                    });
                  },
                  child: Container(
                    color: Colors.yellow,
                  )),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    playAudio(7);
                  });
                },
                child: Container(
                  color: Colors.purple,
                ),
              ),
            ),
            Expanded(child: material(1, Colors.pinkAccent)),
            Expanded(child: material(2, Colors.yellowAccent)),
            Expanded(child: material(3, Colors.green)),
            Expanded(child: material(4, Colors.red)),
            Expanded(child: material(5, Colors.purple)),
            Expanded(child: material(6, Colors.pink)),
            Expanded(child: material(7, Colors.lightBlueAccent)),
          ],
        )),
      ),
    );
  }
}
