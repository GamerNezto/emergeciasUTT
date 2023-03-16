import 'package:flutter/material.dart';

class configuracion extends StatefulWidget {
  const configuracion({super.key});

  @override
  State<configuracion> createState() => _configuracionState();
}

class _configuracionState extends State<configuracion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuraciones UTT'),
        backgroundColor: Color.fromARGB(255, 3, 102, 8),
      ),
    );
  }
}