import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.redAccent,
    appBar: AppBar(
      title: Center(child: Text('Dice')),
      backgroundColor: Colors.redAccent,
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
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('images/dice1.png'),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('images/dice2.png'),
          )),
        ],
      ),
    );
  }
}
