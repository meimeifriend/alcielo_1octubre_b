import 'package:flutter/material.dart';
// Asegúrate de que esta línea esté presente

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rezo App')),
      body: Container(
        color: Colors.lightBlue[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/church_image.jpg'),
            const Text('Bienvenido a la App de Rezo'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Rezo Libre'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Rezo Guiado'),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: 'Donaciones'),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => FreePrayerScreen())); // Aquí se navega a FreePrayerScreen
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => GuidedPrayerScreen()));
              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(builder: (context) => DonationsScreen()));
              break;
          }
        },
      ),
    );
  }
}