import 'package:flutter/material.dart';

class PrincipalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //esto lo he sacado de
      //http://blog.puntoycomalab.com/2021/02/12/flutter-box-shadow-sombreado/
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: double.infinity,
      height: 190,
      child: Contenido(),
    );
  }
}

class Contenido extends StatelessWidget {
  var textStyle =
      TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              //Parte de arriba de la tarjeta
              ParteDeArriba(),
              //Demas contenido de la tarjeta
              Text("I.E.S Jandula", style: textStyle),
              Text("Perfil Direccion", style: textStyle),
              SizedBox(height: 20),
            ],
          ),
        ),
        //Parte de abajo de la tarjeta
        ParteDeAbajo(),
      ],
    );
  }
}

class ParteDeArriba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: [
          Text("Chia Diaz, Margarita",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(width: 120),
          Icon(Icons.people),
        ],
      ),
    );
  }
}

class ParteDeAbajo extends StatelessWidget {
  var textStyle2 = TextStyle(color: Colors.white, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: double.infinity,
      color: Color(0xff019dda),
      child: Row(
        children: [
          SizedBox(width: 30),
          Icon(Icons.access_alarm_outlined, color: Colors.white),
          SizedBox(width: 10),
          Text("Avisos", style: textStyle2),
          SizedBox(width: 30),
          Text("|", style: textStyle2),
          SizedBox(width: 10),
          Icon(Icons.door_front_door, color: Colors.white),
          SizedBox(width: 10),
          Text("Bandeja de firma", style: textStyle2),
        ],
      ),
    );
  }
}
