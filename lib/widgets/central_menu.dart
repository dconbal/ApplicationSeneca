import 'package:flutter/material.dart';
import 'package:seneca/firebase/login_firebase.dart';

class CentralMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Tarjeta(imagen: "sombrero.png", texto: "Alumnado del \n centro"),
            Tarjeta(imagen: "profesor.png", texto: "Personal del \n centro"),
            Tarjeta(imagen: "covid.png", texto: "Informacion \n Covid"),
          ],
        ),
        Row(
          children: [
            Tarjeta(imagen: "campana.png", texto: "Tablon de \n anuncios"),
            Tarjeta(imagen: "calendario.png", texto: "Calendario \n Escolar"),
          ],
        )
      ],
    );
  }
}

class Tarjeta extends StatelessWidget {
  final String imagen;
  final String texto;

  const Tarjeta({
    Key? key,
    required this.imagen,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () sync* {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 170,
        width: 113,
        child: Column(
          children: [
            SizedBox(height: 30),
            Image(
              image: AssetImage("assets/" + imagen),
              width: 50,
            ),
            SizedBox(height: 10),
            Text(
              texto,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
