import 'package:domo/core/common_widgets/elevated_button_widget.dart';
import 'package:domo/core/theme/app_colors.dart';
import 'package:domo/feature/auth/presentation/screens/verification.dart';
import 'package:domo/feature/auth/presentation/widgets/auth_widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _key = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    super.dispose();
  }

  void signUp() {
    if (_key.currentState!.validate()) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Verification(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        key: _key,
        child: SafeArea(
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
                        text: 'Чувствуйте ',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'себя\n как ',
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
                  height: 30,
                ),
                const AuthWidget(
                  hintText: 'Введите ваше имя',
                  textInputType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 10,
                ),
                const AuthWidget(
                  hintText: '+7 999 999-99-99',
                  textInputType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButtonWidget(
                  text: 'Получить смс-код',
                  onPressed: () {
                    signUp();
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Продолжая, вы соглашаетесь',
                  style: TextStyle(
                      fontSize: 14,
                      height: 14 / 16.94,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'со сбором и обработкой персональных данных и\nпользовательским соглашением',
                    style: TextStyle(
                        fontSize: 14,
                        height: 14 / 16.94,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
