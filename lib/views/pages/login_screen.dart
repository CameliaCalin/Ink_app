
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword
      (email: _emailController.text.trim(), password: _passwordController.text.trim(),);
  }



  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              networkLottieWidget(
              'https://assets8.lottiefiles.com/packages/lf20_s9dkwhdi.json',
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3 ),

               const SizedBox(height: 20),

               //TITLE
               Text(
                'MINDful INK ',
                style: GoogleFonts.dancingScript(fontSize: 50, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
               ),

                Text(
                  'Welcome to Mindful Ink - where writing meets mindfulness.',
                  style: GoogleFonts.pacifico(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),

                //email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25), child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your email',
                      ),
                    ),
                  ),
                ),),
                 SizedBox(height: 10),

                //password field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25), child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your  password',
                      ),
                    ),
                  ),
                ),),

                const SizedBox(height: 15),

                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric
                    (horizontal: 95),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Color(0xFF262d73),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: GoogleFonts.robotoCondensed(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                ),
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget networkLottieWidget(String animationUrl, {double? width, double? height}) {
  return Lottie.network(
    animationUrl,
    width: width,
    height: height,
    fit: BoxFit.cover,
  );
}

