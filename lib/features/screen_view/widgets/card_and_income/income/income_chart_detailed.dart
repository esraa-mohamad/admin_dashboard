import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_color.dart';

class IncomeChartDetailed extends StatefulWidget {
  const IncomeChartDetailed({super.key});

  @override
  State<IncomeChartDetailed> createState() => _IncomeChartDetailedState();
}

class _IncomeChartDetailedState extends State<IncomeChartDetailed> {
  int activeIndex = -1;
  List items = [
    {
      'value': "40%",
      'valueRatio': 40,
      'color': AppColor.cyanCornflowerBlue,
      'title': 'Design service',
    },
    {
      'value': "25%",
      'valueRatio': 25,
      'color': AppColor.mainPictonBlue,
      'title': 'Design product',
    },
    {
      'value': "20%",
      'valueRatio': 20,
      'color': AppColor.ateneoBlue,
      'title': 'Product royalty',
    },
    {
      'value': "22%",
      'valueRatio': 22,
      'color': AppColor.bone,
      'title': 'Other',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (flTouchEvent, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }),
      sections: List.generate(items.length, (index) {
        return pieChartSectionData(
          valueRatio: items[index]['valueRatio'],
          value: items[index]['value'],
          title: items[index]['title'],
          color: items[index]['color'],
          radius: activeIndex == index ? 60 : 50,
          activeIndex: activeIndex == index,
        );
      }),
      sectionsSpace: 0,
    );
  }

  PieChartSectionData pieChartSectionData({
    required String value,
    required double valueRatio,
    required String title,
    required Color color,
    required double radius,
    required bool activeIndex,
  }) {
    return PieChartSectionData(
      title: activeIndex ? title : value,
      value: valueRatio,
      color: color,
      radius: radius,
      titleStyle: activeIndex
          ? AppTextStyles.font16AteneoBlueSemiBold(context)
          : AppTextStyles.font16WhiteSemiBold(context),
      titlePositionPercentageOffset: activeIndex ? 1.3 :null ,
    );
  }
}
