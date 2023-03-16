import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:urgencias_utt/main.dart';

import 'home.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
@override
void initState() {
  super.initState();
  _navigatetohome();
}

_navigatetohome()async{
  await Future.delayed(Duration(milliseconds: 1500),() {});
  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyHomePage(title: 'GFG',)));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 600,
              width: 600,
              color: Colors.blue,
            ),
            Center(
              child: Text('Emergencias UTT', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
            ),
          ],
        ),
      ),
    );
  }
}