import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final icon;
  final controlller;


  CustomTextField(this.hintText, this.icon, this.controlller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        child: TextField(
          keyboardType:controlller,
          decoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            prefixIcon:icon,
            suffixIcon: Icon(Icons.arrow_forward_ios),
            hintText: hintText,
          ),

        ),
      ),
    );
  }
}
