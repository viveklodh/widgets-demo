import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            // controller: _controller,
            tabs: [
              Tab(
                text: "Flights",
                icon: Icon(Icons.flight),
              ),
              Tab(text: "Trains", icon: Icon(Icons.train)),
              Tab(text: "Hotels", icon: Icon(Icons.restaurant)),
            ],
          ),
          title: const Text('Flutter TabBar'),
        ),
        body: const TabBarView(
          // controller: _controller,
          children: [
            Center(
              child: Text("Flights"),
            ),
            Center(
              child: Text("Trains"),
            ),
            Center(
              child: Text("Hotels"),
            ),
          ],
        ),
      ),
    );
  }
}
