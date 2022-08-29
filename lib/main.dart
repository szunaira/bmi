import 'package:bmi/screens.dart/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 0, 2, 29),
     // primaryColor: const Color.fromARGB(255, 1, 3, 37), 
      brightness: Brightness.dark,
      ),
      title: 'BMI CALCULATOR',
      home:const Home(),
    );
  }
}
