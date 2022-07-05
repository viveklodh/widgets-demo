import 'dart:math';
import 'package:flutter/material.dart';

class TwoDiceApp extends StatefulWidget {
  const TwoDiceApp({Key? key}) : super(key: key);

  @override
  State<TwoDiceApp> createState() => _TwoDiceAppState();
}

int count1 = 1;
int count2 = 1;

class _TwoDiceAppState extends State<TwoDiceApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dice app"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.black12,
        child: Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    count1 = Random().nextInt(5) + 1;
                    count2 = Random().nextInt(5) + 1;
                  });
                },
                child: Container(
                  height: 150,
                  color: Colors.black38,
                  child: Center(
                    child: Image.asset("assets/dice/dice$count1.png")
                ),
              ),
            ),
          ),),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  count1 = Random().nextInt(5) + 1;
                  count1 = Random().nextInt(5) + 1;
                });
              },
              child: Container(
                height: 150,
                color: Colors.black26,
                child: Center(
                    child: Image.asset("assets/dice/dice$count2.png")
                ),
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
