import 'package:flutter/material.dart';

class PasswordTextfield extends StatefulWidget {
  const PasswordTextfield({super.key, required this.controller,required this.actualText});

  final TextEditingController controller;
  final String actualText;
  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    return TextField(
      controller: widget.controller,
      textAlign: TextAlign.start,
      obscureText: obscureText,
      decoration: InputDecoration(
        focusColor: Colors.grey[200],
        filled: true,
        fillColor: Colors.grey[200],
        labelText: widget.actualText,
        prefixIcon: const Icon(Icons.lock, color: Colors.grey,),
        suffixIcon: GestureDetector(
          onTap: (){
            setState(() {
              obscureText = !obscureText;
            });
          },
          child:obscureText ? const Icon(
            Icons.visibility_off,
            color: Colors.grey,
          )
              : const Icon(
            Icons.visibility,
            color: Color(0XFF4FBF26),
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
      ),
    );
  }
}
