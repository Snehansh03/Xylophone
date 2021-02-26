import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(
      XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color c,int n}){
   return Expanded(
      child: FlatButton(
        color: c,
        onPressed: (){
          playSound(n);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color(0xFFf6e5f5),
          title: Center(
            child: Text(
              'XYLOPHONE',
              style:TextStyle(
                color: const Color(0xFFb9cced),
                fontFamily:'Permanent Marker',
              ),
            ),
          ),
        ),
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(c: Colors.red, n: 1),
              buildKey(c: Colors.orange, n: 2),
              buildKey(c: Colors.yellow, n: 3),
              buildKey(c: Colors.green, n: 4),
              buildKey(c: Colors.blue, n: 5),
              buildKey(c: Colors.indigo, n: 6),
              buildKey(c: Colors.purple, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
