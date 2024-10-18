import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'screens/home_screen.dart'; // Assuming this is your main app screen

void main() => runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  BannerAd? _bannerAd;
  bool _isLoaded = false;
   final adUnitId = Platform.isAndroid
    ? 'ca-app-pub-3940256099942544/6300978111'
    : 'ca-app-pub-3940256099942544/2934735716';
     void loadAd() {
    _bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          setState(() {
            _isLoaded = true;
          });
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, err) {
          debugPrint('BannerAd failed to load: $error');
          // Dispose the ad here to free resources.
          ad.dispose();
        },
      ),
    )..load();
  }
}//CODIGO AGREGADO POR MI PARA EL BANNER DE 5 A 35
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
class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // Load ads.
  }
}// TEXTO MODIFICADO POR MI, DE LA 26 A LA 37, CORRESPONDIENTE A ANUNCIO

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
      MaterialPageRoute(
          builder: (context) =>
              HomeScreen()), // HomeScreen is your main app screen
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
