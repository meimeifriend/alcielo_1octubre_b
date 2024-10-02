import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temporizador',
      home: Scaffold(
        appBar: AppBar(title: const Text('Temporizador')),
        body: const Center(child: TimerWidget()),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Intro App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VideoIntro(),
    );
  }
}

class VideoIntro extends StatefulWidget {
  @override
  _VideoIntroState createState() => _VideoIntroState();
}

class _VideoIntroState extends State<VideoIntro> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/intro_video.mp4')
      ..initialize().then((_) {
        setState(() {}); // Actualiza el estado para que el video se muestre
        _controller.play(); // Comienza a reproducir el video
      });

    // Navegar a la pantalla principal cuando el video termina
    _controller.addListener(() {
      if (_controller.value.position == _controller.value.duration) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    });
  }

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const RezoApp());
}

class RezoApp extends StatelessWidget {
  const RezoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rezo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
