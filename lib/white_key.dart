import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class WhiteKey extends StatelessWidget {
  final String keyName;
  final int octave;
  const WhiteKey(this.keyName, {super.key, required this.octave});

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
          width: 50,
          height: 250,
          color: Colors.white,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(keyName,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
        ));
  }
}
