import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Flutter GridView Demo',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: List.generate(20, (index) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius:
                  BorderRadius.all(Radius.circular(20.0),),
                ),
                child: Center(child: Text("index $index")),
              );
            },),
          ),
        ),
      );
  }
}
