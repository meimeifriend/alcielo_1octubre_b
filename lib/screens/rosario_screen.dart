import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class RosarioScreen extends StatelessWidget {
  const RosarioScreen({super.key});

  static const List<String> audioFiles = [
    'audios/acto_contricion.mp3',
    'audios/ave_maria.mp3',
    'audios/gloria.mp3',
    'audios/jaculatoria_final.mp3',
    'audios/misterios_dolorosos.mp3',
    'audios/misterios_gloriosos.mp3',
    'audios/misterios_gozosos.mp3',
    'audios/misterios_luminosos.mp3',
    'audios/padre_nuestro.mp3',
    'audios/salve_la_virgen.mp3',
    'audios/señal_de_la_cruz.mp3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Santo Rosario')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Los siguientes contenidos buscan ser de utilidad para el rezo del Santo Rosario:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20), // Espaciado entre los textos
              const Text(
                'Audios disponibles:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10), // Espaciado entre los textos
              ...audioFiles.map((audioFile) {
                return AudioPlayerWidget(audioFile: audioFile);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class AudioPlayerWidget extends StatefulWidget {
  final String audioFile;

  const AudioPlayerWidget({Key? key, required this.audioFile}) : super(key: key);

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  void _playAudio() async {
    if (isPlaying) {
      await _audioPlayer.stop();
    } else {
      await _audioPlayer.play(AssetSource(widget.audioFile)); // Usar AssetSource directamente
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            widget.audioFile.split('/').last,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
        IconButton(
          icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
          onPressed: _playAudio,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}