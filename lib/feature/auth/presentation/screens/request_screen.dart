import 'package:domo/core/common_widgets/elevated_button_widget.dart';
import 'package:domo/core/common_widgets/text_button_widget.dart';
import 'package:domo/feature/main_screen/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 154,
              ),
              const Text(
                'Разрешите нам\nсообщать вам\nо важном',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Чтобы отслеживать статус вашего заказа,\nполучать важные уведомления о скидках и\nновостях нужно включить уведомления',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 110,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 66,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.white,
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Image.asset(
                              'assets/images/lead.png',
                              height: 37,
                            ),
                            title: const Text(
                              'Курьер в пути',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),
                            subtitle: const Text(
                              'Спешит к вам со всех сил',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/bell.png',
                        height: 105.24,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 223,
              ),
              ElevatedButtonWidget(
                text: 'Разрешить',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                color: AppColors.white,
                textColor: AppColors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: TextButtonWidget(
                    text: 'Не нужно',
                    onPressed: () {},
                    color: AppColors.white,
                    weight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
