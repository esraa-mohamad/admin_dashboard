import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';
import 'custom_dots_indicator.dart';
import 'my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener((){
      currentIndex = pageController.page!.round();
      setState(() {
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppTextStyles.font20AteneoBlueSemiBold(context),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardsPageView(pageController: pageController,),
        SizedBox(
          height: 20,
        ),
        CustomDotsIndicator(
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}
