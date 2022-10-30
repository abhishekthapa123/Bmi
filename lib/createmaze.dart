import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maze/maze.dart';
class createmaze extends StatefulWidget {
  
   int rows;
   int cols;

 createmaze({Key? key,required this.rows,required this.cols}) : super(key: key);
  @override
  
  State<createmaze> createState() => _createmazeState();
  
}

class _createmazeState extends State<createmaze> {
  @override
  Widget build(BuildContext context) {
    
    return Maze(

      player: MazeItem(
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0N5MNtDOmnuQ2UnczcyOuwDrWekqBU-KGSw&usqp=CAU',ImageType.network 
    ),
    
   columns:widget.cols, //dynamic bannune paxi value
   rows: widget.rows,  //dynamic bannune paxi value
   wallThickness: 4.0,
      
    finish: MazeItem(
      'https://cdn-icons-png.flaticon.com/512/495/495535.png', ImageType.network
      ),
      onFinish: (){
        setState(() {
          widget.cols*2;
          widget.rows*2;
        });
      }
   );
  }
}
  