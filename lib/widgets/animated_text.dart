import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
//ensure initialized
class AnimatedText_Widget extends StatelessWidget {
  const AnimatedText_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AlerDialog_Widget")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          
  //-------To Access this animations We Have To Add Dependency(animated_text_kit: ^4.2.2)---------//
          AnimatedTextKit(
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
            animatedTexts: [
              TypewriterAnimatedText("Uday Kiran",
                  speed: const Duration(milliseconds: 500),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.deepPurpleAccent
                  ))
            ],
          ),
          AnimatedTextKit(
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
            animatedTexts: [
              RotateAnimatedText(
                "HELLO",
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                  fontSize: 30,
                ),
              ),
              RotateAnimatedText(
                "BEAUTIFULL",
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.blue),
              ),
              RotateAnimatedText(
                "BIRD",
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.green),
              )
            ],
          ),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText("HELLO USER  UDAY",
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Colors.pinkAccent)),
              WavyAnimatedText("HAVE A NICE DAY",
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Colors.blue)),
            ],
          )
        ],
      )),
    );
  }
}
