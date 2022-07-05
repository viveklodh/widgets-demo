import 'package:demo/pages/column_page.dart';
import 'package:demo/pages/drawer_page.dart';
import 'package:demo/pages/expanded_page.dart';
import 'package:demo/pages/flexible_page.dart';
import 'package:demo/pages/grid_view_page.dart';
import 'package:demo/pages/hero_animation_page.dart';
import 'package:demo/pages/single_dice_page.dart';
import 'package:demo/pages/tab_bar_page.dart';
import 'package:demo/pages/transition_page.dart';
import 'package:demo/pages/two_dice_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TwoDiceApp(),
    );
  }
}
