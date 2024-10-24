import 'package:flutter/material.dart';

class AboutBikes extends StatefulWidget {
  const AboutBikes({super.key});

  @override
  State<AboutBikes> createState() => _AboutBikesState();
}

class _AboutBikesState extends State<AboutBikes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: TextDecoration.none,
          ),),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
