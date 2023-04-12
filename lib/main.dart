import 'package:app_1/firebase_options.dart';
import 'package:app_1/views/intro_screens/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


// ignore: non_constant_identifier_names
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Estate App',
      debugShowCheckedModeBanner: false,
      home: Auth(),
    );
  }
}
