import 'package:flutter/material.dart';

Widget yellowBigButton(String text, Function onPressed) {
  return ElevatedButton(
    onPressed: onPressed(),
    style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[600]),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
