import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Que2211 extends StatelessWidget {
  final String video1 = "z0tSnmPXs9c";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedTextKit'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              //          mainAxisSize: MainAxisSize.min,
              children: [
                Text('Fade',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
                AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'do IT!',
                      textStyle: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    FadeAnimatedText(
                      'do it RIGHT!!',
                      textStyle: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                  onTap: () {},
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('Typer',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('It is not enough to do your best,',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    TyperAnimatedText('you must know what to do,',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    TyperAnimatedText('and then do your best',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    TyperAnimatedText('- W.Edwards Deming',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                  ],
                  onTap: () {},
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('Typewriter',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Discipline is the best tool',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    TypewriterAnimatedText('Design first, then code',
                        cursor: '|',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    TypewriterAnimatedText(
                        'Do not patch bugs out, rewrite them',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                        cursor: '<|>'),
                    TypewriterAnimatedText(
                        'Do not test bugs out, design them out',
                        cursor: '💡',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                  ],
                  onTap: () {},
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('Scale',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
                AnimatedTextKit(
                  animatedTexts: [
                    ScaleAnimatedText('Think',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    ScaleAnimatedText('Build',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    ScaleAnimatedText('Ship',
                        textStyle: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                  ],
                  onTap: () {},
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('Colorize',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Larry Page',
                      textStyle: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                    ),
                    ColorizeAnimatedText(
                      'Bill Gates',
                      textStyle: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                    ),
                    ColorizeAnimatedText(
                      'Steve Jobs',
                      textStyle: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                    ),
                  ],
                  onTap: () {},
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('Combination',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'On Your Marks',
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    FadeAnimatedText(
                      'Get Set',
                      textStyle: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ScaleAnimatedText(
                      'Ready',
                      textStyle: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RotateAnimatedText(
                      'Go!',
                      textStyle: const TextStyle(
                        fontSize: 24.0,
                      ),
                      rotateOut: false,
                      duration: const Duration(milliseconds: 400),
                    )
                  ],
                  onTap: () {},
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('Flicker',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FlickerAnimatedText('Flicker Frenzy',
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                    FlickerAnimatedText('Night Vibes On',
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                    FlickerAnimatedText("C'est La Vie !",
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                  ],
                  onTap: () {},
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('Wavy Text',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'Hello World',
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    WavyAnimatedText('Look at the waves'),
                    WavyAnimatedText('They look so Amazing'),
                  ],
                  onTap: () {},
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('TextLiquidFill',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                TextLiquidFill(
                  text: 'LIQUIDY',
                  waveColor: Colors.blueAccent,
                  boxBackgroundColor: Colors.redAccent,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 30,
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('Rotate',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
                AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('AWESOME'),
                    RotateAnimatedText('OPTIMISTIC'),
                    RotateAnimatedText(
                      'DIFFERENT',
                      textStyle: const TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
