import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  const CustomButton({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration:    BoxDecoration(
          color:red ,
          borderRadius: BorderRadius.circular(100)
          
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w600
          ),
        )),
      ),
    );
  }
}
