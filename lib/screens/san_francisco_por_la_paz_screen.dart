import 'package:flutter/material.dart';

class SanFranciscoPorLaPazScreen extends StatelessWidget {
  const SanFranciscoPorLaPazScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('San Francisco por la Paz')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Señor, haz de mí un instrumento de tu paz: donde haya odio, ponga yo amor, donde haya ofensa, ponga yo perdón, donde haya discordia, ponga yo unión, donde haya error, ponga yo verdad, donde haya duda, ponga yo la fe, donde haya desesperación, ponga yo esperanza, donde haya tinieblas, ponga yo luz, donde haya tristeza, ponga yo alegría. Oh Maestro, que no busque yo tanto ser consolado como consolar, ser comprendido como comprender, ser amado como amar. Porque dando se recibe, olvidando se encuentra, perdonando se es perdonado, y muriendo se resucita a la vida eterna.',
            style: TextStyle(
              fontSize: 16,
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