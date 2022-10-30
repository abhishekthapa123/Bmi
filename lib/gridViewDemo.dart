import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maze_game/cardDemo.dart';

class gridViewDemo extends StatelessWidget {
  const gridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Demo'),
      ),
      // ignore: sized_box_for_whitespace
      body:GridView.count(crossAxisCount: 3,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      children: [
        
        Container(color: Colors.black,),
     
        Container(color: Colors.blue,),
        Container(color: Colors.red,),
        Container(color: Colors.orange,),
        Container(color: Colors.pink,),
        Container(color: Colors.yellow,),
        Container(color: Colors.brown,),
        Container(color: Colors.purple,),

      ],
      )
    );
  }
}