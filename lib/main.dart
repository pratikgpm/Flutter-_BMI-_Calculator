import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      title: 'BMI Calculator',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var edit1 = TextEditingController();
  var edit2 = TextEditingController();
  var edit3 = TextEditingController();
  var ans = '';
  var tx = '';
  var d;
  var clr = [
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.red,
  ];

  var Col = Colors.white;

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'BMI',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade600),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              child: TextField(
                controller: edit1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: FaIcon(
                    FontAwesomeIcons.weightScale,
                  ),
                  suffixIcon: InkWell(
                      onTap: () {
                        edit1.text = '';
                        edit2.text = '';
                        edit3.text = '';
                        tx = '';
                        ans = '';
                        Col = Colors.white;
                        setState(() {

                        });
                      },
                      child: Icon(Icons.settings_backup_restore_outlined,color: Colors.grey,)),
                  label: Text(
                    'Enter your Weight',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: edit2,
                decoration: InputDecoration(
                  label: Text('Enter Height in (ft)',
                      style: TextStyle(color: Colors.grey)),
                  prefixIcon: FaIcon(FontAwesomeIcons.rulerVertical),
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                  keyboardType: TextInputType.number,
                  controller: edit3,
                  decoration: InputDecoration(
                      label: Text('Height in Inches',
                          style: TextStyle(color: Colors.grey)),
                      prefixIcon: FaIcon(
                        FontAwesomeIcons.rulerVertical,
                      ))),
            ),
            SizedBox(
              height: 30,
            ),
          InkWell(
            onTap: (){
              if(edit1.text.isEmpty || edit2.text.isEmpty){
                tx = '  Please fill all bkank Fields';
                d = '';
                ans ='';
                Col = Colors.white;
                setState(() {

                });
              }
              else {
                var wt = int.parse(edit1.text.toString());
                var ft = int.parse(edit2.text.toString());
                var inc;
                edit3.text.isEmpty ? inc = 0 :
                inc = int.parse(edit3.text.toString());
                tx = '  Your BMI is :';
                ft *= 12;
                inc += ft;
                dynamic t;
                t = inc * 0.0254;
                t *= t;
                d = wt/t;
                ans = '${d.toStringAsFixed(2)}';
                if (d <= 18.4) {
                    Col = clr[0];
                  } else if (d >= 18.5 && d <=24.9) {
                    Col = clr[1];
                  } else if(d >= 25.0 && d <=39.9) {
                    Col = clr[2];
                  } else if(d >= 40){
                    Col = clr[3];
                  }
                  setState(() {

                });

              }
            },
            child: Container(
              width:  150,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(75),
              ),
              child: Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Calculate' , style: TextStyle(color: Colors.white , fontSize: 20),),
              )),
            ),
          ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 400,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CircleAvatar(
                        backgroundColor: Col,
                        radius: 8,
                      ),
                  Text(
                    '$tx',
                    style: TextStyle(
                      fontFamily: 'myFont',
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '$ans',
                    style: TextStyle(
                        fontFamily: 'myFont',
                        color: Colors.orange,
                        fontSize: 25),
                  )
                ])),
          ],
        ),
      ),
    );
  }
}
