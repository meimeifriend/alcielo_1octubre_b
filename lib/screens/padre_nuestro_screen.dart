import 'package:flutter/material.dart';

class PadreNuestroScreen extends StatelessWidget {
  const PadreNuestroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padre Nuestro')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Padre Nuestro, que estás en el cielo. Santificado sea Tu Nombre. Venga a nosotros tu reino. Hágase tu voluntad así en la tierra como en el Cielo. Danos hoy el pan nuestro de cada día. Perdona nuestras ofensas como también nosotros perdonamos a los que nos ofenden. No nos dejes caer en la tentación y líbranos del mal, Amén.',
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