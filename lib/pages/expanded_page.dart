import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("expanded page"),),
      body: Column(
          children: [
            Expanded(flex:1,child: Container(color: Colors.blue)),
            Expanded(flex:3,child: Container(color: Colors.red)),
            Expanded(flex:1,child: Container(color: Colors.blue)),
          ],
        ),
    );
  }
}
