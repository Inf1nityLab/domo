import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;
  final Color textColor;
  const ElevatedButtonWidget(
      {super.key,
      required this.text,
      required this.onPressed,
       this.color = AppColors.blue, this.textColor = AppColors.white});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        child: Text(
          text,
          style:  TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: textColor),
        ),
      ),
    );
  }
}
