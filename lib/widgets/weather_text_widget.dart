import 'package:flutter/material.dart';

Widget weatherTextWidget(String text) {
  return  Text(text,
    style: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  );
}
