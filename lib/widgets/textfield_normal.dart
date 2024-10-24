import 'package:flutter/material.dart';

class TextFieldNorm extends StatelessWidget {
  const TextFieldNorm({Key? key, required this.labelText,required this.icon,required this.textInputType}) : super(key: key);

  final String labelText;
  final Icon icon;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      textAlign: TextAlign.start,

      decoration: InputDecoration(
        focusColor: Colors.grey[200],
        filled: true,
        fillColor: Colors.grey[200],
        labelText: labelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(
            color: Colors.black12,
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
        prefixIcon: icon,
        prefixIconColor: Colors.grey,
      ),
    );
  }
}
