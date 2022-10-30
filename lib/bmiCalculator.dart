import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class bmiCalculator extends StatefulWidget {
  const bmiCalculator({Key? key}) : super(key: key);

  @override
  State<bmiCalculator> createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  var bgColor = Colors.grey.shade300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      // ignore: sized_box_for_whitespace
      body: Container(
      color:bgColor ,
        child: Center(
          child: Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 24),
                      child: Text(
                        "BMI",
                        style: TextStyle(fontSize: 34, fontWeight: FontWeight.w200),
                      )),
                ),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                      label: Text("Enter weight",style: TextStyle(fontWeight: FontWeight.w200),),
                      
                      prefixIcon: Icon(Icons.line_weight)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10.0,width: 10.0,),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                      label: Text("Enter height in  feet"),
                      prefixIcon: Icon(Icons.height_sharp)),
                  keyboardType: TextInputType.number,
                ),
                 SizedBox(height: 10.0,width: 10.0,),
                 TextField(
                   controller: inController,
                   decoration:InputDecoration(
                     hintText: ("Enter height in inches"),
                     prefixIcon: Icon(Icons.height),
                    
                   ),
                   keyboardType: TextInputType.number,
                 ),
                 SizedBox(height: 10.0,),
                 ElevatedButton(onPressed:(){
                   var wt = wtController.text.toString();
                   var ft = ftController.text.toString();
                   var inc = inController.text.toString();
                   if(wt!="" && ft!="" && inc!="")
                   {
                     //bmi calculated
                     var weight = int.parse(wt);
                     var feet = int.parse(ft);
                     var inch = int.parse(inc);
                     var tinch = (feet*12) + inch;
                     var tcm = tinch*2.54;
                     var tm = tcm /100;
                     var bmi = weight/(tm*tm);
                     var msg ="";
                     if(bmi>25)
                     {
                       msg = "OverWeight";
                       bgColor = Colors.redAccent;

                     }
                     else if(bmi<18)
                     {
                       msg = " UnderWeight";
                       bgColor = Colors.yellowAccent;

                     }
                     else
                     {
                       msg = "Healthy";
                       bgColor = Colors.lightGreenAccent;

                     }
                     setState(() {
                       result = "$msg\n BMI: ${bmi.toStringAsFixed(2)}";
                     });
                   }
                   else{

                      setState(() {
                        result = "Please fill all the required blanks!!!";
                      });

                   }
                 }, child: Text("Calculate")),
                 SizedBox(height:10.0),
                 Text(result,style: TextStyle(fontSize:16),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
