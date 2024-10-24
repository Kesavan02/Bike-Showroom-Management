import 'package:flutter/material.dart';

class LoginSignupBtnToast extends StatelessWidget {
  const LoginSignupBtnToast({Key? key, required this.text,required this.widget,required this.toastMessage}) : super(key: key);

  final String text;
  final Widget widget;
  final String toastMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
          ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(toastMessage),
                  duration: const Duration(seconds: 1),
                  action: SnackBarAction(label: 'Close', onPressed: (){
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  }),
              ),
          );
        },
        style: TextButton.styleFrom(
          elevation: 10,
          backgroundColor: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(text,
          style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
      ),
    );
  }
}
