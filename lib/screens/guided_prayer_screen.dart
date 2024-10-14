import 'package:flutter/material.dart';
import 'ave_maria_screen.dart'; // Asegúrate de que estos archivos existan
import 'padre_nuestro_screen.dart';
import 'gloria_screen.dart';
import 'angel_guarda_screen.dart';
import 'credo_screen.dart';
import 'salve_reina_screen.dart';
import 'cordero_de_dios_screen.dart';

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
//ANGEL DE LA GUARDA
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AngelGuardaScreen()),
              );
            },
            child: const Text('Angel de la Guarda'),
          ),
// CREDO
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CredoScreen()),
              );
            },
            child: const Text('Credo'),
          ),
//SALVE, REINA
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SalveReinaScreen()),
              );
            },
            child: const Text('Salve, Reina'),
          ),
//CORDERO DE DIOS
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CorderoDeDiosScreen()),
              );
            },
            child: const Text('Cordero de Dios'),
          ),
        ],
      ),
    );
  }
}