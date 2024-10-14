import 'package:flutter/material.dart';

class CorderoDeDiosScreen extends StatelessWidget {
  const CorderoDeDiosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cordero de Dios')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Cordero de Dios, que quitas el pecado del mundo, ten piedad de nosotros. Cordero de Dios, que quitas el pecado del mundo, ten piedad de nosotros. Cordero de Dios, que quitas el pecado del mundo, danos la paz, danos la paz.',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}