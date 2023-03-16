import 'package:flutter/material.dart';

class login extends StatefulWidget {
  static String id = 'login';
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        title: Text('Login UTT'),
        backgroundColor: Color.fromARGB(255, 3, 102, 8),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset('assets/LogoEnfe.png',
                height: 300.0,
                ),
              ),
              SizedBox(height: 15.0,),
              _userTextField(),
              SizedBox(height: 15.0,),
              _passwordTextField(),
              SizedBox(height: 15.0,),
              _bottonLogin(),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _userTextField() {
    return StreamBuilder(
      builder:(BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
           child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon(Icons.text_decrease_outlined),
              hintText: 'Cedula de ingreso',
              labelText: 'Cedula de enfermera'
            ),
            onChanged: (value){
              
            },
          ),
        );
      }
    );
  }
  
  Widget _passwordTextField() {
    return StreamBuilder(
      builder:(BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              hintText: 'Contrasena de ingreso',
              labelText: 'Contrasena del sistema'
            ),
            onChanged: (value){

            },
          ),
        );
      }
    );
  }
  
  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return OutlinedButton(
            onPressed:(){}, 
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
              child: Text('Iniciar sesion', style: TextStyle(
                color:Color.fromRGBO(253, 159, 19, 1),
                fontSize: 24,
              )),
            )
          );
        }
      );
  }
}
