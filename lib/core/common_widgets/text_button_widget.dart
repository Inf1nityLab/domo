import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;
  final FontWeight weight;

  const TextButtonWidget(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color, required this.weight});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      ),
      child: Text(
        text,
        style:
            TextStyle(fontSize: 16, fontWeight: weight, color: color),
      ),
    );
  }
}
