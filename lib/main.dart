import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:urgencias_utt/home.dart';
import 'package:urgencias_utt/screens/configuracion.dart';
import 'package:urgencias_utt/screens/consulta.dart';
import 'package:urgencias_utt/screens/login.dart';
import 'package:urgencias_utt/screens/tutoriales.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/consulta': (context)=> const consulta(),
        '/configuracion': (context)=> const configuracion(),
        '/tutoriales': (context)=> const tutoriales(),
        '/login': (context)=> login(),
      },
      title: 'Emergenicas UTT',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(splash: 
        Image.asset('assets/LogoEnfe.png',
        height: 600.0
        ),
        duration:3000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Color.fromARGB(255, 231, 118, 13),
        nextScreen: MyHomePage(title: 'GFG'),),
        /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
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
      ),*/
    );
  }
}


