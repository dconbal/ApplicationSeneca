import 'package:flutter/material.dart';
import 'package:seneca/screens/login_screen.dart';
import 'package:seneca/screens/principal_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (_) => LoginPage(),
        'principal': (_) => PrincipalScreen()
      },
    );
  }
}
