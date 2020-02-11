import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int leftDice=1;
  int rightDice=1;

  rollDice(){
    setState(() {
     leftDice=Random().nextInt(6)+1;
     rightDice=Random().nextInt(6)+1;
    });

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.teal.shade300,
        appBar: AppBar(title: Text('my app'),backgroundColor: Colors.teal.shade900,),
        body: Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: FlatButton(              
                child: Image(image: AssetImage('images/dice$leftDice.png')), 
                onPressed: () {rollDice();},)),
              Expanded(child: FlatButton(
                child: Image(image: AssetImage('images/dice$rightDice.png')), 
                onPressed: () {rollDice();},))
            ],
          ),
        ),
      )
    );
  }
}


