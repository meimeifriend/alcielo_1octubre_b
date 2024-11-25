import 'package:flutter/material.dart';
import 'ave_maria_screen.dart'; // Asegúrate de que estos archivos existan
import 'padre_nuestro_screen.dart';
import 'gloria_screen.dart';

class GuidedPrayerScreen extends StatelessWidget {
  const GuidedPrayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rezo Guiado')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AveMariaScreen()),
              );
            },
            child: const Text('Ave María'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PadreNuestroScreen()),
              );
            },
            child: const Text('Padre Nuestro'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GloriaScreen()),
              );
            },
            child: const Text('Gloria'),
          ),
        ],
      ),
    );
  }
}