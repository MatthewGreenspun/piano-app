import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class BlackKey extends StatelessWidget {
  final String keyName;
  final int octave;
  const BlackKey(this.keyName, {super.key, required this.octave});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets/$keyName$octave.mp3"),
          );
        },
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            width: 25,
            height: 160,
            color: Colors.grey[900],
            child: Center(
              child: Text(keyName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)),
            )));
  }
}
