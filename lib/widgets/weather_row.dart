import 'package:flutter/material.dart';
import 'package:tapp/widgets/weather_text_widget.dart';

Widget weatherRow(IconData icon, String text, String tempText) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        SizedBox(
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              weatherTextWidget(text),
            ],
          ),
        ),
        weatherTextWidget(tempText),
      ],
    ),
  );
}
