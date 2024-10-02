import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const RezoApp());
}

class RezoApp extends StatelessWidget {
  const RezoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rezo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}