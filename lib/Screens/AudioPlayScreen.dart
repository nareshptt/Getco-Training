import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  final AudioPlayer _player = AudioPlayer();

  bool isPlaying = false;

  @override
  void initState() {
    super.initState();

    // Listen to player state (auto update UI)
    _player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
  }

  Future<void> playMusic() async {
    try {
      await _player.stop();

      // IMPORTANT: NO "assets/" here
      await _player.setSource(AssetSource('audio/audio.mp3'));
      await _player.resume();
    } catch (e) {
      debugPrint("Error playing audio: $e");
    }
  }

  Future<void> pauseMusic() async {
    await _player.pause();
  }

  Future<void> stopMusic() async {
    await _player.stop();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music Player"),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.blueGrey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.music_note, size: 120, color: Colors.white),

            const SizedBox(height: 30),

            Text(
              isPlaying ? "Playing..." : "Stopped",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  iconSize: 55,
                  color: Colors.white,
                  onPressed: playMusic,
                ),
                IconButton(
                  icon: const Icon(Icons.pause),
                  iconSize: 55,
                  color: Colors.yellow,
                  onPressed: pauseMusic,
                ),
                IconButton(
                  icon: const Icon(Icons.stop),
                  iconSize: 55,
                  color: Colors.red,
                  onPressed: stopMusic,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
