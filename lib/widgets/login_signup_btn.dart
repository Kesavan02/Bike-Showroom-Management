import 'package:flutter/material.dart';

class LoginSignupBtn extends StatelessWidget {
  const LoginSignupBtn({Key? key, required this.btnName,required this.navigator}) : super(key: key);

  final String btnName;
  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => navigator));
        },
        style: TextButton.styleFrom(
          elevation: 10,
          backgroundColor: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          btnName,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        ),
    );
  }
}
