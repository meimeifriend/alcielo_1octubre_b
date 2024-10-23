import 'package:flutter/material.dart';

class SobreCarloAcutisScreen extends StatelessWidget {
  const SobreCarloAcutisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre Carlo Acutis')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Aquí se agrega la imagen
            Image.asset(
              'assets/carlo_acutis_foto.jpg', // Asegúrate de que la ruta sea correcta
              height: 200, // Ajusta el tamaño según sea necesario
              width: 200,
            ),
            const SizedBox(height: 16.0), // Espaciado entre la imagen y el texto
            const Text(
              'Su paso por este mundo fue muy breve: el flamante Beato Carlo Acutis fue el único hijo de Antonia Salzano y Andra Acutis, nació el 3 de mayo de 1991 y murió el 12 de octubre de 2006. Sin embargo, en los 15 años que vivió en Milán, dejó huellas imborrables en cada persona que lo conoció y en las que ahora, tras haber sido beatificado por el papa Francisco, lo descubren a diario a través de su legado en internet.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}