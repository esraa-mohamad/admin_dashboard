import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_details.dart';

class ChartAndDetailsSection extends StatelessWidget {
  const ChartAndDetailsSection({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(child: IncomeDetails()),
      ],
    );
  }
}
