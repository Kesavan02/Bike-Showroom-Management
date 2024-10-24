import 'package:flutter/material.dart';
import '/screens/log_sign.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini_pro',
      theme: ThemeData(
        primaryColor: Colors.white,
        secondaryHeaderColor: Colors.purple,
      ),
      home: const LogSign(),
    );
  }
}
