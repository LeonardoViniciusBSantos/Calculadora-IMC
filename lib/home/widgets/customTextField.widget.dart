import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;

  CustomTextField({
    required this.controller,
    required this.labelText,
    this.keyboardType = TextInputType.text,
  });


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
        borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
    ),
    borderRadius: BorderRadius.circular(0.0),
        ),
      ),
    );
  }
}
