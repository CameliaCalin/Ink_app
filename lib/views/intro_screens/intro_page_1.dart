import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF865DFF),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            'https://assets2.lottiefiles.com/packages/lf20_0c8439m5.json', 

          ),
          const SizedBox(height: 32.0),
          const Text(
            'Can reading your thoughts make you feel better?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'Examining our thoughts with a positive and growth-oriented mindset can lead to personal development and an improved sense of self-awareness.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color:  Color.fromARGB(255, 211, 229, 247)),

            ),
          ),
        ],
      ),
    );
  }
}
