import 'package:admin_dashboard/features/desktop_layout/widgets/card_and_income/income/income_chart.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/card_and_income/income/income_details.dart';
import 'package:flutter/material.dart';

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
