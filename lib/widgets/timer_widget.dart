import 'package:flutter/material.dart';
import 'dart:async';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int _seconds = 0; // Inicializa el contador en cero
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer(); // Inicia el temporizador al cargar el widget
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++; // Incrementa los segundos cada segundo
      });
    });
  }

  void _stopTimer() {
    _timer?.cancel(); // Cancela el temporizador
  }

  @override
  void dispose() {
    _stopTimer(); // Asegúrate de detener el temporizador al destruir el widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Tiempo de Rezo: $_seconds segundos', style: TextStyle(fontSize: 24)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _startTimer, child: const Text('Play')),
            const SizedBox(width: 20),
            ElevatedButton(onPressed: _stopTimer, child: const Text('Stop')),
          ],
        ),
      ],
    );
  }
}