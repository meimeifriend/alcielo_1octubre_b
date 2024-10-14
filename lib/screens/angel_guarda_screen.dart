import 'package:flutter/material.dart';

class AngelGuardaScreen extends StatelessWidget {
  const AngelGuardaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Angel de la Guarda')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Angel de mi guarda, dulce compañía, no me desampares ni de noche ni de día. No me dejes solo que me perdería. Hasta que amanezca en los brazos de Jesús, José y María.',
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