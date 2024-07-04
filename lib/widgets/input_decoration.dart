import 'package:flutter/material.dart';

class Input_Decoration {
  static InputDecoration inputDecoration({
    required String labelText,
  }){
    return InputDecoration(
      fillColor: const Color(0xff4A4A4A),
        filled: true,
        border: InputBorder.none,
        hintStyle: const TextStyle(
          color: Color(0xff999999),
          fontSize: 13, 
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Color(0xff999999)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xff4A4A4A)),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xff4A4A4A)),
          borderRadius: BorderRadius.circular(10),
        ),
        //prefixIcon: icon,
    );
  }
}