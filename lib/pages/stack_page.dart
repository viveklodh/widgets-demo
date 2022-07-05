import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stack page'),
      ), //AppBar
      body: Stack(
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ), //Container
          Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ), //Container
          Container(
            height: 100,
            width: 100,
            color: Colors.yellowAccent,
          ), //Container
        ], //<Widget>[]
      ), //Stack
      //Center
    );
  }
}
