import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF3E2C41),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            'https://assets9.lottiefiles.com/packages/lf20_nYTWw1y4QJ.json', // schimbați această valoare cu locația fișierului Lottie de pe dispozitivul dvs.

          ),
          const SizedBox(height: 32.0),
          const Text(
            'Can self-reflection improve mental and emotional well-being?',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          const SizedBox(height: 16.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'Listening to and understanding your own thoughts can enhance self-awareness, promote personal growth, and lead to a more positive and fulfilling life.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 211, 229, 247)),

            ),
          ),
        ],
      ),
    );
  }
}
