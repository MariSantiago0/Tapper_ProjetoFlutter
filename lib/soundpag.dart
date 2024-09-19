import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SoundPag extends StatefulWidget {
  const SoundPag({Key? key}) : super(key: key);

  @override
  _SoundPagState createState() => _SoundPagState();
}

class _SoundPagState extends State<SoundPag> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  Future<void> _runAudio(String path) async {
    try {
      await player.play(AssetSource('audios/tip_appear.mp3'));
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _runAudio1(String path) async {
    try {
      await player.play(AssetSource('audios/tune_win.mp3'));
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _runAudio2(String path) async {
    try {
      await player.play(AssetSource('audios/sfx_fill1.mp3'));
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        iconTheme: IconThemeData(color: Color(0xffffffff)),
        elevation: 0, // Remove a sombra padrão do AppBar
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xffc80000),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20),
          children: [
            Center(
              child: Text(
                'Efeitos Sonoros',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.fill
                      ..color = Color(0xffd40101)),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      _runAudio('audios/tip_appear.mp3');
                    },
                    label: Text(
                      "Tip Appear",
                      style: TextStyle(
                        color: Color(0xff000000), // Cor do texto
                        fontSize: 16,
                      ),
                    ),
                    icon: Icon(Icons.attach_money),
                    
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      _runAudio1('audios/tune_win.mp3');
                    },
                    label: Text(
                      "Win Level Tune",
                      style: TextStyle(color: Color(0xff000000)),
                    ),
                    icon: Icon(Icons.notifications_active),
                    
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      _runAudio2('audios/sfx_fill1.mp3');
                    },
                    label: Text(
                      "Fill Beer",
                      style: TextStyle(color: Color(0xff000000)),
                    ),
                    icon: Icon(Icons.sports_bar),
                    
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: SoundPag()));
