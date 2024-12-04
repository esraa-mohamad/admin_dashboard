import 'package:flutter/material.dart';

import 'chart_and_details_section.dart';
import 'income_and_monthly.dart';

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
    );
  }
}