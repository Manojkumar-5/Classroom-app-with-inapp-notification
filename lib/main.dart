import 'package:flutter/material.dart';
import './src/screens/Student.dart';
import './src/screens/Teacher.dart';
import './src/screens/HomePage.dart';
import './src/screens/Dashboard.dart';
import './src/screens/ProductPage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClassRoom App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(pageTitle: 'Welcome'),
      routes: <String, WidgetBuilder> {
        '/Student': (BuildContext context) =>  Student(),
        '/Teacher': (BuildContext context) =>  Teacher(),
        '/dashboard': (BuildContext context) => Dashboard(),
        '/productPage': (BuildContext context) => ProductPage(),
      },
    );
  }
}
