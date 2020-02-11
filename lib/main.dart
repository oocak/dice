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
          child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Spacer(flex:3),
             Row(
              children: <Widget>[
                Spacer(),
                Expanded(child: Image(image: AssetImage('images/dice$leftDice.png'))), 
                Spacer(),
                Expanded(child: Image(image: AssetImage('images/dice$rightDice.png'))), 
                Spacer(),
              ],
            ),
            Spacer(flex:1),
            FlatButton(
              padding:EdgeInsets.fromLTRB(5.0,2.0,5.0,2.0),
              child: Text("Roll'em"), 
              onPressed: () {rollDice();},
              color:Colors.teal.shade200,
              textColor:Colors.white ),
            Spacer(flex:2)
           ],
          ),
        ),
      )
    );
  }
}


