import 'package:flutter/material.dart';
import 'login_page.dart';
import 'sign_up.dart';
import 'package:mini_pro/widgets/logo.dart';
import 'package:mini_pro/widgets/login_signup_btn.dart';

class LogSign extends StatefulWidget {
  const LogSign({super.key});

  @override
  State<LogSign> createState() => _LogSignState();
}

class _LogSignState extends State<LogSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Center(
          child: Text('Mini_Pro',
          style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          decoration: TextDecoration.none,
              ),
                ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 170,
            width: 170,
          ),
          const Center(
            child: Logo(),
            ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              const SizedBox(
                height: 20.0,
                width: 50.0,
              ),
              LoginSignupBtn(btnName: 'Login', navigator: LoginPage()),
              const SizedBox(
                width: 10.0,
                height: 20.0,
              ),
              const LoginSignupBtn(btnName: 'Signup', navigator: SignUp()),
            ],
          ),
        ],
      ),
    );
  }
}
