import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'screens/home_screen.dart'; // Assuming this is your main app screen
import 'screens/quiz_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Intro App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VideoIntroScreen(),
    );
  }
}

class VideoIntroScreen extends StatefulWidget {
  @override
  _VideoIntroScreenState createState() => _VideoIntroScreenState();
}

class _VideoIntroScreenState extends State<VideoIntroScreen> {
  late VideoPlayerController _controller;
  bool _isVideoInitialized = false;

  @override
  void initState() {
    super.initState();

    // Initialize the video player
    _controller = VideoPlayerController.asset('assets/intro_video.mp4')
      ..initialize().then((_) {
        setState(() {
          _isVideoInitialized = true;
        });
        _controller.play(); // Play the video automatically
        _controller.setLooping(false); // Ensure it doesn't loop

        // Navigate to the main screen when the video finishes
        _controller.addListener(() {
          if (_controller.value.position == _controller.value.duration) {
            _navigateToHome();
          }
        });
      });
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => HomeScreen()), // HomeScreen is your main app screen
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _isVideoInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(), // Show a loader until video initializes
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
      title: 'Juego de Múltiple Choice',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: QuizScreen(),
    );
  }
}