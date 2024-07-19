import 'package:domo/core/common_widgets/elevated_button_widget.dart';
import 'package:domo/core/common_widgets/text_button_widget.dart';
import 'package:domo/feature/auth/presentation/screens/request_screen.dart';
import 'package:domo/feature/auth/presentation/widgets/otp.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  void signIn() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RequestScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              const Center(
                child: Text(
                  'Регистрация',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Мы очень ',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'рады\nвас видеть ',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blue,
                      ),
                    ),
                    TextSpan(
                      text: 'Домо',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              const Text(
                'Код отправили собзением на номер\n+7 999 999 99 99',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Otp(),
                  Otp(),
                  Otp(),
                  Otp(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButtonWidget(
                    text: 'Изменить номер',
                    onPressed: () {},
                    color: AppColors.blue,
                    weight: FontWeight.w500,
                  ),
                  TextButtonWidget(
                    text: 'Получить код повторно',
                    onPressed: () {},
                    color: AppColors.grey,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButtonWidget(text: 'Войти', onPressed: () {
                signIn();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
