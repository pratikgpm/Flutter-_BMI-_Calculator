import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';

class Flash_Screen extends StatefulWidget {
  const Flash_Screen({super.key});

  @override
  State<Flash_Screen> createState() => _Flash_ScreenState();
}

class _Flash_ScreenState extends State<Flash_Screen> {
  @override

  void initState(){
    super.initState();
  Timer(Duration(seconds : 3),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
  });

  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.indigo,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Daily Routine", style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'myDaily'),)),
                Text('  Pvt Ltd.',style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
        ),
    );
  }
}
