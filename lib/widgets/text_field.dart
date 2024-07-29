import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labeltext;
  const CustomTextField(
      {super.key, required this.controller, required this.labeltext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: labeltext,
            labelStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
