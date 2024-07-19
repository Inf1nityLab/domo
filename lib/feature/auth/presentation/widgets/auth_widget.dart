import 'package:domo/core/theme/app_colors.dart';
import 'package:flutter/material.dart';






class AuthWidget extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  const AuthWidget({super.key, required this.hintText,
    required this.textInputType, required this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String? text){
        if(text == null || text.isEmpty){
          return '$hintText не может быть пустым';
        }
        return null;
      },
      keyboardType: textInputType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 21,),
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
          borderSide: const BorderSide(color: AppColors.grey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
          borderSide: const BorderSide(color: AppColors.blue, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
          borderSide: const BorderSide(color: AppColors.red, width: 1.0),
        ),
      ),
    );
  }
}
