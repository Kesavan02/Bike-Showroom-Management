import 'package:flutter/material.dart';
import 'package:mini_pro/utils/bottom_navigation_bar.dart';
import 'package:mini_pro/widgets/textfield_normal.dart';
import 'package:mini_pro/widgets/logo.dart';
import 'package:mini_pro/widgets/custom_password_field.dart';
import 'package:mini_pro/widgets/login_signup_btn_toast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        titleTextStyle: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
                width: 150,
              ),
              const Center(
                child: Logo(),
              ),
              const SizedBox(
                height: 30.0,
              ),
             const TextFieldNorm(labelText: 'Email', icon: Icon(Icons.email_rounded),textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 20.0,
              ),
              PasswordTextfield(controller: passwordController, actualText: 'Password'),
              const SizedBox(
                height: 20.0,
              ),
             const LoginSignupBtnToast(text: 'Login', widget: BottomNavBar(), toastMessage: 'Login Successfully'),
            ],
          ),
        ),
      ),
    );
  }
}
