import 'dart:math';

import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: Center(child: Text('Dice')),
      backgroundColor: Colors.red,
    ),
    body:DicePage(),
  ),
));
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int left = 1;
  int right = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    left = Random().nextInt(6) + 1;
                    //print(left);
                  });
                },
                child: Image.asset('images/dice$left.png'),
              ),
          ),
          Expanded(child: FlatButton(
            onPressed: (){
              setState(() {
                right = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$right.png'),
          ),
          ),
        ],
      ),
    );
  }
}
