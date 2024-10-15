import 'package:alcielo_1octubre_b/screens/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'guided_prayer_screen.dart';
import 'donations_screen.dart';
import 'free_prayer_screen.dart';
import 'sobre_mi_screen.dart';
import 'sobre_carlo_acutis_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Ajusta la altura del AppBar
        child: AppBar(
          title: const Text('Al Cielo'),
          centerTitle: true, // Centra el título
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 127, 193, 224),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espacio entre los elementos
          children: [
            // Usamos Expanded para que la imagen ocupe todo el espacio disponible
            Expanded(
              child: Center( // Centrar la imagen
                child: Image.asset(
                  'assets/church_image.jpg',
                  fit: BoxFit.cover, // Ajusta la imagen para que cubra todo el espacio
                  width: double.infinity, // Asegura que la imagen ocupe todo el ancho
                ),
              ),
            ),
            // Usamos un Padding para separar el texto de la imagen
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    'Bienvenido a la Aplicación',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8), // Espacio entre los textos
                  const Text(
                    'inspirada en Carlo Acutis.',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey, // Cambia el color de fondo
        selectedItemColor: Colors.white, // Color del item seleccionado
        unselectedItemColor: Colors.grey, // Color de los items no seleccionados
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Sobre Mí'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Sobre Carlo Acutis'),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Rezo Libre'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Rezo Guiado'),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: 'Donaciones'),
          BottomNavigationBarItem(icon: Icon(Icons.games), label: 'Juegos'),
          
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SobreMiScreen()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SobreCarloAcutisScreen()));
              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(builder: (context) => FreePrayerScreen()));
              break;
            case 4:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GuidedPrayerScreen()));
              break;
            case 5:
              Navigator.push(context, MaterialPageRoute(builder: (context) => DonationsScreen()));
              break;
            case 6:
              Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));
              break;
          }
        },
      ),
    );
  }
}