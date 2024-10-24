import 'package:flutter/material.dart';
import 'package:mini_pro/utils/bottom_navigation_bar.dart';
import 'package:mini_pro/widgets/custom_password_field.dart';
import 'package:mini_pro/widgets/logo.dart';
import 'package:mini_pro/widgets/textfield_normal.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
                width: 100,
              ),
              const Center(
                child: Logo()
              ),
              const SizedBox(
                height: 30.0,
              ),
              const TextFieldNorm(labelText: 'Username', icon: Icon(Icons.person), textInputType: TextInputType.name),
              const SizedBox(
                height: 20.0,
              ),
              const TextFieldNorm(labelText: 'Email', icon: Icon(Icons.email_rounded), textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 20.0,
              ),
              PasswordTextfield(controller: passwordController, actualText: 'Password'),
              const SizedBox(
                height: 20.0,
              ),
              PasswordTextfield(controller: passwordController, actualText: 'Confirm Password'),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
                  },
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text('SignUp',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
