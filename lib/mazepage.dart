import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maze/maze.dart';
import 'package:maze_game/createmaze.dart';

class MazePage extends StatefulWidget {
  const MazePage({Key? key}) : super(key: key);

  @override
  State<MazePage> createState() => _MazePageState();
}

class _MazePageState extends State<MazePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: createmaze(cols: 2,rows: 2),
      ),
    );
  }

}

  
  
    