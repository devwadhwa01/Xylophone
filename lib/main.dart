import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  ElevatedButton keys(String noteSound, Color? color, String noteName) {
    double buttonHeight = 75.0;
    return ElevatedButton(
      style: ButtonStyle(
          enableFeedback: false,
          backgroundColor:  WidgetStateProperty.all<Color?>(color),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          overlayColor: WidgetStateColor.transparent,
          shadowColor: WidgetStateColor.transparent,
          splashFactory: NoSplash.splashFactory),
      onPressed: () {
        playMusic(noteSound);
      },
      child: SizedBox(
        width: double.infinity,
        height: buttonHeight,
        child: Center(
          child: Text(
            noteName,
            style: const TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Avocado",
            ),
          ),
        ),
      ),
    );
  }

  final int colorContrast = 400;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontFamily: "Cinzel",
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black26,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              keys("C2", Colors.red[colorContrast], "C"),
              keys("B", Colors.orange[colorContrast], "B"),
              keys("A", Colors.yellow[colorContrast], "A"),
              keys("G", Colors.green[colorContrast], "G"),
              keys("F", Colors.blue[colorContrast], "F"),
              keys("E1", Colors.indigo[colorContrast], "E"),
              keys("D1", Colors.deepPurple[colorContrast], "D"),
              keys("C", Colors.purple[colorContrast], "C")
            ],
          ),
        ),
        backgroundColor: Colors.white24,
      ),
    );
  }
}

void playMusic(chord) {
  final player = AudioPlayer();
  player.play(AssetSource('$chord.wav'));
}
