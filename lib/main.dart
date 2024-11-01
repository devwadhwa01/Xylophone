import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonHeight = 70.0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Xylophone',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.black26,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextButton(
              style: const ButtonStyle(enableFeedback: false, overlayColor: WidgetStateColor.transparent),
              onPressed: () {
                Audio.load('assets/note1.wav')..play()..dispose();
              },
              child: Container(
                color: Colors.red,
                width: double.infinity,
                height: buttonHeight,
              ),
            ),
            TextButton(
              onPressed: () {

              },
              child: Container(
                color: Colors.orange,
                width: double.infinity,
                height: buttonHeight,
              ),
            ),
            TextButton(
              onPressed: () {

              },
              child: Container(
                color: Colors.yellow,
                width: double.infinity,
                height: buttonHeight,
              ),
            ),
            TextButton(
              onPressed: () {
                playMusic();
              },
              child: Container(
                color: Colors.green,
                width: double.infinity,
                height: buttonHeight,
              ),
            ),
            TextButton(
              onPressed: () {
                playMusic();
              },
              child: Container(
                color: Colors.blue,
                width: double.infinity,
                height: buttonHeight,
              ),
            ),
            TextButton(
              onPressed: () {
                playMusic();
              },
              child: Container(
                color: Colors.indigo,
                width: double.infinity,
                height: buttonHeight,
              ),
            ),
            TextButton(
              onPressed: () {
                playMusic();
              },
              child: Container(
                color: Colors.purple,
                width: double.infinity,
                height: buttonHeight,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white10,
      ),
    );
  }
}

void playMusic() {

}
