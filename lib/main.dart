import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seneca/providers/login_provider.dart';
import 'package:seneca/screens/login_screen.dart';
import 'package:seneca/screens/principal_screen.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider(), lazy: false),
      ],
      child: MyApp(),
    );
  }
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
