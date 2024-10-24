import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      color: Colors.transparent,
      child: const CircleAvatar(
        backgroundColor: Colors.grey,
        backgroundImage: AssetImage('assets/logo.png'),
      ),
    );
  }
}
