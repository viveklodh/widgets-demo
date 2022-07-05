import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click Here'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage("argument")));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  String details;
  SecondPage(this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(details),
        ),
      ),
    );
  }
}