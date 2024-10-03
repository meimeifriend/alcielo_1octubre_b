import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../data/questions.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  late VideoPlayerController _controller;
  bool showVideo = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video_ganador.mp4');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void checkAnswer(int selectedIndex) {
    if (selectedIndex == questions[currentQuestionIndex].correctAnswerIndex) {
      setState(() {
        showVideo = true;
      });
      _controller.play();
      Future.delayed(Duration(seconds: 5), () {
        _controller.pause();
        _controller.seekTo(Duration.zero);
        setState(() {
          currentQuestionIndex++;
          showVideo = false;
        });
      });
    } else {
      // Aquí puedes mostrar un mensaje de respuesta incorrecta
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Respuesta Incorrecta')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Juego de Múltiple Choice')),
      body: currentQuestionIndex < questions.length
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  questions[currentQuestionIndex].questionText,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                ...questions[currentQuestionIndex].options.asMap().entries.map((entry) {
                  int index = entry.key;
                  String option = entry.value;
                  return ElevatedButton(
                    onPressed: () => checkAnswer(index),
                    child: Text(option),
                  );
                }).toList(),
                if (showVideo) 
                  Container(
                    height: 200,
                    child: VideoPlayer(_controller),
                  ),
              ],
            )
          : Center(child: Text('¡Has terminado el juego!')),
    );
  }
}