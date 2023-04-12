import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF5C527F),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            'https://assets10.lottiefiles.com/private_files/lf30_bdtgmex1.json', 

          ),
          const SizedBox(height: 32.0),
          const Text(
            'Can joy be found within yourself?',
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
              'True happiness comes from within. By fostering positivity and gratitude, we can experience joy in any situation and find a deep sense of inner fulfillment. ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color:  Color.fromARGB(255, 211, 229, 247)),

            ),
          ),
        ],
      ),
    );
  }
}
