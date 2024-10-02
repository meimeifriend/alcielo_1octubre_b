import 'dart:async';

import 'package:flutter/material.dart';

class CustomTimer extends StatefulWidget {
  @override
  _CustomTimerState createState() => _CustomTimerState();
}

class _CustomTimerState extends State<CustomTimer> {
  int _start = 60; // Tiempo en segundos
  bool _isRunning = false;
  late final Timer _timer;

  void startTimer() {
    _isRunning = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        _timer.cancel();
        setState(() {
          _isRunning = false;
        });
      }
    });
  }

  void stopTimer() {
    _timer.cancel();
    setState(() {
      _isRunning = false;
      _start = 60; // Reiniciar el tiempo
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Tiempo de rezo: $_start segundos'),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _isRunning ? null : startTimer,
          child: Text('Play'),
        ),
        ElevatedButton(
          onPressed: _isRunning ? stopTimer : null,
          child: Text('Stop'),
        ),
      ],
    );
  }
}