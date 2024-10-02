import 'package:flutter/material.dart';

class DonationsScreen extends StatelessWidget {
  const DonationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Donaciones')),
      body: const Center(
        child: Text('Gracias por considerar una donación!'),
      ),
    );
  }
}