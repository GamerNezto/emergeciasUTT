import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Emergencias UTT'),
        backgroundColor: Color.fromARGB(255, 3, 102, 8),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
          onPressed: (){
             Navigator.pushNamed(context, '/login');
          },
           child: Text('Consulta', style: TextStyle(
            color:Color.fromRGBO(253, 159, 19, 1),
            fontSize: 24,
           )), 
        ),
        OutlinedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/tutoriales');
          },
          //backgroundColor: Color.fromRGBO(253, 159, 19, 1),
           child: Text('Tutoriales', style: TextStyle(
            color:Color.fromRGBO(253, 159, 19, 1),
            fontSize: 24,
           )), 
        ),
        OutlinedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/configuracion');
          },
          //backgroundColor:  Color.fromRGBO(253, 159, 19, 1),
          child: Text('Configuracion', style: TextStyle(
            color:Color.fromRGBO(253, 159, 19, 1),
            fontSize: 24,
           )), 
        ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  /*void _showSeconPage(BuildContext context){
    Navigator.of(context).pushNamed("/second");
  }*/


}

