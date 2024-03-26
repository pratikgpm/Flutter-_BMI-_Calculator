import 'package:flutter/material.dart';
class result_screen extends StatefulWidget {
  var height ;
  var weight;
  var answer ;
  var color_dot;
result_screen(this.weight,this.height,this.answer,this.color_dot){}
  @override
  State<result_screen> createState() => _result_screenState();
}

class _result_screenState extends State<result_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'BMI Calculator',
              style: TextStyle(color: Colors.white),
            )),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Weight : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  Text('${widget.weight}',style: TextStyle(fontSize: 20,color: Colors.grey.shade500,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Container(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Height : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  Text('${widget.height}',style: TextStyle(fontSize: 20,color: Colors.grey.shade500,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your BMI is ',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: widget.color_dot,
                        radius: 8,
                      ),
                      Text('  ${widget.answer}',style: TextStyle(fontSize: 20,color: Colors.grey),),
                    ],
                  )

                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              width: 330,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('≤ 18.4', style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w700),),
                     Row(
                       children: [
                         CircleAvatar(
                           backgroundColor: Colors.yellow,
                           radius: 8,
                         ),
                         Text('   Underwaight',style: TextStyle(color: Colors.grey,fontSize: 15),),
                       ],
                     ),
                   ],
                 ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('18.5 -24.9', style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w700),),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 8,
                          ),
                          Text('            Normal',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('25.0 - 39.9', style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w700),),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 8,
                          ),
                          Text('     Overwaight',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('≥ 40.0', style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w700),),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 8,
                          ),
                          Text('              Obese',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
