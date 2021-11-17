import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  bool _mostrarPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8],
            colors: [
              Color(0xff01549c),
              Color(0xff01315a),
            ],
          ),
        ),
        //Si quitas el ListView al abrir el teclado sale sale un error justo encima del teclado
        child: ListView(
          children: [
            Center(
              child: SafeArea(
                child: Container(
                  alignment: Alignment.center,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      //titulo
                      Text(
                        "iSéneca",
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      //cuadro de texto del usuario
                      CuadroUsuario(),
                      SizedBox(height: 20),
                      //Cuadro de la contraseña
                      CuadroContrasena(),
                      SizedBox(height: 20),
                      //boton para acceder
                      Boton(),

                      SizedBox(height: 50),
                      //He olvidado mi contraseña
                      RecuperarContrasena(),

                      SizedBox(height: 180),

                      LogoJuntaAndalucia(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "v11.3.0",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CuadroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white12,
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: Colors.white, width: 0.0),
            ),
            hintText: "Usuario",
            hintStyle: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}

class CuadroContrasena extends StatefulWidget {
  @override
  State<CuadroContrasena> createState() => _CuadroContrasenaState();
}

class _CuadroContrasenaState extends State<CuadroContrasena> {
  bool _mostrarPass = false;
  String contrasena = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white12,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: TextField(
        obscureText: !_mostrarPass,
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.white, width: 0.0),
          ),
          hintText: "Contraseña",
          hintStyle: TextStyle(color: Colors.white, fontSize: 20),
          suffixIcon: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              ),
              GestureDetector(
                child: FittedBox(
                  child: Icon(
                    Icons.remove_red_eye,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                onTap: () => setState(
                  () {
                    _mostrarPass = !_mostrarPass;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Boton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      color: Colors.white,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, 'principal'),
        child: Text(
          "Entrar",
          style: TextStyle(fontSize: 20, color: Color(0xff27578b)),
        ),
      ),
    );
  }
}

class RecuperarContrasena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        "No recuerdo mi contraseña",
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.white,
          fontSize: 22,
        ),
      ),
      onTap: () {},
    );
  }
}

class LogoJuntaAndalucia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //imagen junta de andalucia
        Image(
          image: AssetImage('assets/logo.png'),
          width: 100,
        ),
        //Texto de la junta de andalucia
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Junta de Andalucía",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              "Consejería de Educación y Deporte",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        )
      ],
    );
  }
}
