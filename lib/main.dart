import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/Dashboard.dart';
import 'package:flutter_ecommerce/pages/login_page.dart';
import 'package:flutter_ecommerce/pages/register_page.dart';
import 'package:flutter_ecommerce/pages/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter E-Commerce',
        routes: {
          '/products': (BuildContext context) => Dashboard(),
          '/login': (BuildContext context) => LoginPage(),
          '/register': (BuildContext context) => RegisterPage()
        },
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.cyan[400],
            accentColor: Colors.deepOrange[200],
            textTheme: TextTheme(
                headline:
                    TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
                title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
                body1: TextStyle(fontSize: 18.0))),
        home: WelcomeScreen());
  }
}
