import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("row page"),),
      body: Container(
        color: Colors.yellow,
        height:double.infinity,
        child: Column(
          children: [
            Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width:80,height: 80,color:Colors.red,child: const Center(child: Text("1"))),
                Container(width:80,height: 80,color:Colors.blue,child: const Center(child: Text("2"))),
                Container(width:80,height: 80,color:Colors.green,child: const Center(child: Text("3"))),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width:80,height: 80,color:Colors.red,child: const Center(child: Text("1"))),
                Container(width:80,height: 80,color:Colors.blue,child: const Center(child: Text("2"))),
                Container(width:80,height: 80,color:Colors.green,child: const Center(child: Text("3"))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


