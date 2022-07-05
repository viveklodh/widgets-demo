import 'dart:math';
import 'package:flutter/material.dart';

class SingleDicePage extends StatefulWidget {
  @override
  State<SingleDicePage> createState() => _SingleDicePageState();
}

class _SingleDicePageState extends State<SingleDicePage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Single Dice App"),
        ),
        body: InkWell(
          onTap: () {
            setState(() {
              index = Random().nextInt(5) + 1;
            });
          },
          child: Align(
            alignment: Alignment.center,
            child: Container(
                color: Colors.black,
                child: Image.asset(
                  "assets/dice/dice$index.png",
                  width: 300,
                  height: 300,
                )),
          ),
        ));
  }
}
