import 'package:admin_dashboard/features/desktop_layout/widgets/card_and_income/income/chart_and_details_section.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/card_and_income/income/income_and_monthly.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20 ,
        right: 20 ,
        top: 20 ,
        bottom: 0 ,
      ),
      decoration: BoxDecoration(
        color: Colors.white ,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12) ,
          topLeft: Radius.circular(12),
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IncomeAndMonthly(),
            SizedBox(
              height: 16,
            ),
            ChartAndDetailsSection(),
          ],
        ),
      ),
    );
  }
}
