import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_details.dart';

class ChartAndDetailsSection extends StatelessWidget {
  const ChartAndDetailsSection({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(child: IncomeChart()),
        Flexible(child: IncomeDetails()),
      ],
    );
  }
}
