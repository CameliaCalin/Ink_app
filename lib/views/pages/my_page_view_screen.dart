
import 'package:app_1/views/pages/ink_admin.dart';
import 'package:flutter/material.dart';
import 'package:app_1/views/intro_screens/intro_page_2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../intro_screens/intro_page_1.dart';
import '../intro_screens/intro_page_3.dart';




class  MyPageViewScreen extends StatefulWidget {
  const  MyPageViewScreen({Key? key}) : super(key: key);

  @override
  State< MyPageViewScreen> createState() => _MyPageViewScreenState();
}

class _MyPageViewScreenState extends State< MyPageViewScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState (() {
                onLastPage = (index == 2);
              });

          },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          Container(
            alignment: const Alignment(0, 0.75),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap:(){
                      _controller.jumpToPage(2);
                      },
                    child: const Text('skip', style: TextStyle(color: Colors.white)),
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                onLastPage
                    ?GestureDetector(
                    onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) {
                        return   const HomePage();
                     }));
                    },
                    child: const Text('START'),
                    )
                    : GestureDetector(
                        onTap: (){
                         _controller.nextPage(
                         duration: const Duration(microseconds: 500),
                         curve: Curves.easeIn,
                       );
                      },
                        child: const Text('next', style: TextStyle(color: Colors.white)),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
