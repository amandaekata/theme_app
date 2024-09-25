import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final String text;
  final Function() onPressed;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 40),
        backgroundColor: Colors.orange,
      ),
      onPressed:  widget.onPressed,
      child: Text(
        widget.text,
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
