import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class currentDate extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    var time  = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text("Current Date and Time Demo"),
        ),
        body:
        Center(
          child: Container(
            color: Colors.blue,
            height: 200,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text('Current Time $time')
                    
                ],
              ),
          ),
        ),
        
    );
  }
}