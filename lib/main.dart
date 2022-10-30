import 'package:flutter/material.dart';
import 'package:maze_game/bmiCalculator.dart';
import 'package:maze_game/cardDemo.dart';
import 'package:maze_game/currentDate.dart';
import 'package:maze_game/gridViewDemo.dart';
import 'package:maze_game/mazepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maze Game',
   
      home:bmiCalculator()
    );
  }
}

