import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flexible page'),
      ), //AppBar
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellowAccent,
        child: Row(
          children: [
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.red,
              ), //BoxDecoration
            ), //
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.greenAccent,
                ), //BoxDecoration
              ),
            ),
          ],
        ),
      ), //Container
    );
  }
}
