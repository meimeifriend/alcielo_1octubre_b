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
      _controller = VideoPlayerController.asset('assets/video_ganador.mp4')
        ..initialize().then((_) {
          // Ensure the first frame is shown after the video is initialized
          setState(() {});
          _controller.play(); // Autoplay the video
        });
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

  Text drawQuestion() {
    return Text(
      questions[currentQuestionIndex].questionText,
      style: TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    );
  }

  List<Widget> drawOptions() {
    return questions[currentQuestionIndex].options.asMap().entries.map((entry) {
      int index = entry.key;
      String option = entry.value;
      return ElevatedButton(
        onPressed: () => checkAnswer(index),
        child: Text(option),
      );
    }).toList();
  }

  Column drawMainColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (showVideo)
          Container(
              height: 250,
              width:
                  MediaQuery.of(context).size.width, // Full width of the screen
              child: VideoPlayer(_controller))
        else
          drawQuestion(),
        ...drawOptions()
      ],
    );
  }

  Center drawEnd() {
    return Center(child: Text('¡Has terminado el juego!'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Juego de Múltiple Choice')),
      body: currentQuestionIndex < questions.length
          ? drawMainColumn()
          : drawEnd(),
    );
  }
}
