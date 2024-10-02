import 'package:flutter/material.dart';

class AveMariaScreen extends StatelessWidget {
  const AveMariaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ave María')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0), // Espaciado alrededor del texto
          child: Text(
            'Ave María, llena eres de gracia…', // Texto de la oración
            style: TextStyle(
              fontSize: 24, // Tamaño de fuente
              fontWeight: FontWeight.bold, // Negrita
              color: Colors.black, // Color del texto
            ),
            textAlign: TextAlign.center, // Centra el texto
          ),
        ),
      ),
    );
  }
}