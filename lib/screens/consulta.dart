import 'package:flutter/material.dart';


class consulta extends StatefulWidget {
  const consulta({super.key});

  @override
  State<consulta> createState() => _consultaState();
}

class _consultaState extends State<consulta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultas UTT'),
        backgroundColor: Color.fromARGB(255, 3, 102, 8),
      ),
    );
  }
}