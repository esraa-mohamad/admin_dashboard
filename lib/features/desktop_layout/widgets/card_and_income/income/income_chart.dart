import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {

  int activeIndex = -1;
  List items = [
    {
      'value': 40,
      'color': AppColor.cyanCornflowerBlue,
    },
    {
      'value': 25,
      'color': AppColor.mainPictonBlue,
    }, {
      'value': 20,
      'color': AppColor.ateneoBlue,
    }, {
      'value': 22,
      'color': AppColor.bone,
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
          }
      ),
      sections: List.generate(items.length, (index) {
        return pieChartSectionData(
          value: items[index]['value'],
          color: items[index]['color'],
          radius: activeIndex == index ? 60 : 50 ,
        );
      }),
      sectionsSpace: 0,
    );
  }

  PieChartSectionData pieChartSectionData({
    required double value,
    required Color color,
    required double radius
  }) {
    return PieChartSectionData(
        value: value,
        color: color,
        showTitle: false,
        radius: radius
    );
  }
}
