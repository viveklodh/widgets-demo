import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("column page"),
      ),
      body: Container(
        color: Colors.yellowAccent,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 80,
                height: 80,
                color: Colors.red,
                child: const Center(child: Text("1"))),
            Container(
                width: 80,
                height: 80,
                color: Colors.blue,
                child: const Center(child: Text("2"))),
            Container(
                width: 80,
                height: 80,
                color: Colors.green,
                child: const Center(child: Text("3"))),
          ],
        ),
      ),
    );
  }
}
