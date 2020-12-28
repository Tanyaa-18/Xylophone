import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main(){
  runApp(
      XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {
  void play(int num){

    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded fun( {Color color ,  int n, String st}){

      return Expanded(
            child: FlatButton(
              color: color,
              onPressed: (){
                play(n);
              },
              child: Text(st),
            )
        );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            fun(color:Colors.red , n: 1, st:'hello'),
            fun(color:Colors.deepOrange , n: 2, st:'hello'),
            fun(color:Colors.yellow, n: 3, st:'hello'),
            fun(color:Colors.greenAccent.shade700, n: 4, st:'hello'),
            fun(color:Colors.teal.shade900 , n: 5, st:'hello'),
            fun(color:Colors.blue , n: 6, st:'hello'),
            fun(color:Colors.purple , n: 7, st:'hello'),


            ],
          )
          ),
        ),

    );
  }
}


//FlatButton(
//onPressed: (){
//final player = AudioCache();
//player.play('note2.wav');
//},
//child: Text('clicked'),
//)