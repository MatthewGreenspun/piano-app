import "package:flutter/material.dart";
import 'package:piano/white_key.dart';
import 'black_key.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard({super.key});
  static const whiteKeys = ["C", "D", "E", "F", "G", "A", "B"];
  static const blackKeys = [
    "Db",
    "Eb",
    "Gb",
    "Ab",
    "Bb",
  ];
  static const allKeys = [
    "C",
    "Db",
    "D",
    "Eb",
    "E",
    "F",
    "Gb",
    "G",
    "Ab",
    "A",
    "Bb",
    "B",
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(children: [
        Row(children: [
          ...whiteKeys.map((k) => WhiteKey(k, octave: 3)),
          ...whiteKeys.map((k) => WhiteKey(k, octave: 4)),
        ]),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ...allKeys.map((k) => k.contains("b")
              ? BlackKey(k, octave: 3)
              : const SizedBox(
                  width: 34,
                  height: 10,
                )),
          ...allKeys.map((k) => k.contains("b")
              ? BlackKey(k, octave: 4)
              : const SizedBox(
                  width: 33,
                  height: 10,
                )),
        ]),
      ]),
    );
  }
}
