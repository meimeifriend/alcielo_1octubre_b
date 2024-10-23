import 'package:flutter/material.dart';

class VeneremosScreen extends StatelessWidget {
  const VeneremosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Veneremos')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Veneremos, pues, inclinados tan grande Sacramento; y la antigua figura ceda el puesto al nuevo rito; la fe supla la incapacidad de los sentidos. Al Padre y al Hijo sean dadas alabanza y júbilo, salud, honor, poder y bendición; una gloria igual sea dada al que del uno y del otro procede. Amén.',
            style: TextStyle(
              fontSize: 20,
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