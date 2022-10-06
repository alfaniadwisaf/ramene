import 'package:flutter/material.dart';
import 'package:tugas2_prakmobile/landing.dart';
import 'package:tugas2_prakmobile/login.dart';
import 'package:tugas2_prakmobile/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Landing(),
    );
  }
}