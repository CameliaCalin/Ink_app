import 'package:app_1/views/pages/ink_admin.dart';
import 'package:app_1/views/pages/login_screen.dart';
import 'package:flutter/material.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.index,}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.deepPurple,

      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(left:50),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return const HomePage();
                      }));
                },
                icon: const Icon(Icons.home)
            ),
          ),
          label: 'Home',
        ),

        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(left:15),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                },
                icon: const Icon(Icons.book)
            ),
          ),
          label: 'Notes',
        ),

        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(right:50),
            child: IconButton(
                onPressed: () {
                  print('No profile screen.yet');
                },
                icon: const Icon(Icons.person)
            ),
          ),
          label: 'Profile',
        ),

      ],
    );
  }
}
