import 'package:flutter/material.dart';

class PrayerButton extends StatelessWidget {
  final String title;
  final Widget screen;

  const PrayerButton({super.key, required this.title, required this.screen});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(title),
    );
  }
}