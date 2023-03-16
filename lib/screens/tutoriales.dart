import 'package:flutter/material.dart';

class tutoriales extends StatefulWidget {
  const tutoriales({super.key});

  @override
  State<tutoriales> createState() => _tutorialesState();
}

class _tutorialesState extends State<tutoriales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutoriales UTT'),
        backgroundColor: Color.fromARGB(255, 3, 102, 8),
      ),
      body: Column(
          children: <Widget>[
            header(),
            list(),
        ],
      ),
    );
  }

  Widget header(){
    return Stack(
      children: <Widget>[
        Container(
            height: 100.0,
            width: double.infinity, //all width
            child: Image.network('https://images.pexels.com/photos/806427/pexels-photo-806427.jpeg?auto=compress&cs=tinysrgb&w=600',
            fit: BoxFit.cover,
            )
        ),
        Container(
          height: 100.0,
          width: double.infinity,
          color: Colors.black38,
        ),
        Positioned(
            left: 16.0,
            top: 16.0,
            child: Text(
                'Tutoriales medicos',
            style: TextStyle(
                fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            )
        ),
      ],
    );
  }

  Widget list(){
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: <Widget>[
          dayWidget('Primeros auxilios', Icons.chevron_right,''),
          dayWidget('Botiquin en case', Icons.chevron_right, ''),
          dayWidget('Metodos anticonceptivos', Icons.chevron_right, ''),
          dayWidget('Medicina basica', Icons.chevron_right , ''),
        ],
      ),
    );
  }

  Widget dayWidget(String day, IconData iconData, String temp){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(day),
            Icon(iconData),
            Text(temp)
          ],
        ),
      )
    );
  }
}