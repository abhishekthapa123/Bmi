// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class cardDemo extends StatelessWidget {
  const cardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Demo'),

      ),
      body:Center(

          child: Card(
            
            shadowColor: Colors.blue,
            elevation: 5,
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Card Dmeo"),
          ),),
        ),
      );

    
  }
}