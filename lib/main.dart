import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  TextButton keys(String noteSound, Color color, String noteName){
    double buttonHeight = 70.0;
    return TextButton(
      style: const ButtonStyle(enableFeedback: false, overlayColor: WidgetStateColor.transparent, shadowColor: WidgetStateColor.transparent, splashFactory: NoSplash.splashFactory),
      onPressed: () {
        playMusic(noteSound);
      },
      child: Container(
        color: color,
        width: double.infinity,
        height: buttonHeight,
        child: Center(child: Text(noteName, style: const TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

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
            keys("C2", Colors.red,"C"),
            keys("B", Colors.orange,"B"),
            keys("A", Colors.yellow,"A"),
            keys("G", Colors.green,"G"),
            keys("F", Colors.blue,"F"),
            keys("E1", Colors.indigo,"E"),
            keys("D1", Colors.deepPurple,"D"),
            keys("C", Colors.purple,"C")
          ],
        ),
        backgroundColor: Colors.white10,
      ),
    );
  }
}

void playMusic(chord) {
  final player = AudioPlayer();
  player.play(AssetSource('$chord.wav'));
}
