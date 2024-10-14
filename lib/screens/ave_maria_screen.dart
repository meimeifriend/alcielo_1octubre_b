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
            'Dios te salve, María. Llena eres de gracia. El Señor es contigo. Bendita tú eres entre todas las mujeres y bendito es el fruto de tu vientre, Jesús. Santa María, Madre de Dios, ruega por nosotros pecadores ahora y en la hora de nuestra muerte, Amén.', // Texto de la oración
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