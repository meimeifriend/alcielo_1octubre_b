import 'package:flutter/material.dart';
import '../widgets/custom_timer.dart';

class FreePrayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rezo Libre'),
      ),
      body: Center(
        child: CustomTimer(),
      ),
    );
  }
}