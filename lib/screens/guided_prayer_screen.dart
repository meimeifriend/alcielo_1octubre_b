import 'package:alcielo_1octubre_b/screens/magnificat_screen.dart';
import 'package:alcielo_1octubre_b/screens/san_francisco_por_la_paz_screen.dart';
import 'package:alcielo_1octubre_b/screens/veneremos_screen.dart';
import 'package:alcielo_1octubre_b/screens/yo_confieso_screen.dart';
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
//YO CONFIESO
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const YoConfiesoScreen()),
              );
            },
            child: const Text('Yo Confieso'),
          ),
//MAGNIFICAT
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MagnificatScreen()),
              );
            },
            child: const Text('Magnificat'),
          ),
//SAN FRANCISCO POR LA PAZ
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SanFranciscoPorLaPazScreen()),
              );
            },
            child: const Text('San Francisco por la Paz'),
          ),
//VENEREMOS
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VeneremosScreen()),
              );
            },
            child: const Text('Veneremos'),
          ),
        ],
      ),
    );
  }
}