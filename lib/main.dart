import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
    int leftDieNumber = 1;
    int RightDieNumber = 1;
    void changeDieNo(){
      leftDieNumber = Random().nextInt(6) + 1;
      RightDieNumber = Random().nextInt(6) + 1;
    }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: TextButton(
            onPressed: (){
              // print('pressed');
              setState(() {
                changeDieNo();
              });
            },
            child: Image.asset(
                'images/dice$leftDieNumber.png'),
          ),
          ),
          Expanded(child: TextButton(
            onPressed: (){
              setState(() {
                changeDieNo();
              });
            },
            child: Image.asset(
                'images/dice$RightDieNumber.png'),
          ),
          ),
        ],
      ),
    );
  }
}
