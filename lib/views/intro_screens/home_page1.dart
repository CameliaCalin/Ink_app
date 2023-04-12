import 'dart:async';

import 'package:app_1/views/pages/my_page_view_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  final user = FirebaseAuth.instance.currentUser!;
  List<Color> _textColors = [Color(0xFFA5D7E8), Color(0xFF576CBC), Color(0xFF19376D)];
  int _currentColorIndex = 0;
  bool _showButton = false;

 @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        _currentColorIndex = (_currentColorIndex + 1) % _textColors.length;
      });
    });
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showButton = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Lottie.network(
            'https://assets2.lottiefiles.com/packages/lf20_yswp4uj3.json',
            height: 600,
          ),
          Expanded(
            child: Center(
              child: AnimatedOpacity(
                opacity: _showButton ? 1 : 0,
                duration: const Duration(milliseconds: 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Track your thoughts and emotions with ease using our app. You won\'t regret it.',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          color: _textColors[_currentColorIndex],
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    const SizedBox(height: 120),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyPageViewScreen(),
                          ));
                        },
                        child: const Icon(Icons.arrow_forward, size: 30),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: const Color(0xff0B2447),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}