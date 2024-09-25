import 'package:flutter/material.dart';

class CustomTextInputField extends StatefulWidget {
  const CustomTextInputField({super.key, required this.hintText});
final String hintText;
  @override
  State<CustomTextInputField> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  @override
  Widget build(BuildContext context) {
    return     TextField(
      decoration: InputDecoration( 
        hintText: widget.hintText,
        border:  const   OutlineInputBorder() ),
    );
  }
}