import 'package:flutter/material.dart';
import 'package:inventory_tracker/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // initialRoute: '/',
      home: HomePage(),
    );
  }
}
