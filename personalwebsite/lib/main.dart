import 'package:flutter/material.dart';
import 'package:personalwebpage/Testpage.dart';
import 'package:personalwebpage/landingpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestPage(),
      debugShowCheckedModeBanner: false,

      );
  }
}
