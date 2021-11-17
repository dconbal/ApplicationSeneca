import 'package:flutter/material.dart';
import 'package:seneca/widgets/custom_button_navegation.dart';

class PrincipalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
      ),
      bottomNavigationBar: CustomButtonNavegation(),
    );
  }
}
