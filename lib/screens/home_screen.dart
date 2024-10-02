import 'package:flutter/material.dart';
import 'guided_prayer_screen.dart';
import 'donations_screen.dart';
import 'free_prayer_screen.dart';

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
        backgroundColor: Colors.blueGrey, // Change the background color
        selectedItemColor: Colors.white, // Change the color of the selected item
        unselectedItemColor: Colors.grey, // Change the color of unselected items

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => FreePrayerScreen()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GuidedPrayerScreen()));
              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DonationsScreen()));
              break;
          }
        },
      ),
    );
  }
}