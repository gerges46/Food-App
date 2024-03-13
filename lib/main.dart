import 'package:flutter/material.dart';
import 'package:foodappws/pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arabic food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.indigo,
      ),
      home:  HomePage
        (

      ),
    );
  }
}

