import 'package:flutter/material.dart';
import 'package:scroll_to_animate_tab/scroll_to_animate_tab.dart';

import '../../../../core/theme/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> discount = <String>[
    'assets/images/discount1.png',
    'assets/images/discount1.png',
    'assets/images/discount1.png',
    'assets/images/discount2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 250,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Привет, Регина',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black2),
                              ),
                              Text(
                                'Мичурина 82/84',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black2),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/prof_img.png',
                            height: 33.69,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 124,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: discount.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 16, left: 5),
                              height: 124,
                              width: 254,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(discount[index]),
                                    fit: BoxFit.cover),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 620,
                child: ScrollToAnimateTab(
                    activeTabDecoration: TabDecoration(
                        textStyle: const TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                        )
                    ),
                    inActiveTabDecoration: TabDecoration(
                        textStyle: const TextStyle(color: Colors.black),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                        )
                    ),
                    tabs: [
                      ScrollableList(
                          label: "Классические",
                          body: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 15,
                            itemBuilder: (_, index) => ListTile(
                              title: Text('List element ${index + 1}'),
                            ),
                          )
                      ),
                      ScrollableList(
                          label: "Запеченные",
                          body: Column(
                            children: List.generate(
                                10,
                                    (index) => ListTile(
                                  title: Text('List element ${index + 1}'),
                                )),
                          )
                      ),
                    ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
