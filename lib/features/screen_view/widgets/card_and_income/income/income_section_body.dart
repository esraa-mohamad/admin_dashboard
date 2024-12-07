import 'package:admin_dashboard/features/screen_view/widgets/card_and_income/income/income_chart_detailed.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helper/app_size_helper.dart';
import 'income_chart.dart';
import 'income_details.dart';


class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return
      width >= AppSizeHelper.desktop  && width <= 1800 ?
      Expanded(child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: IncomeChartDetailed()),
      )) :
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: IncomeChart(),
          ),
          Expanded(
            flex: 2,
            child: IncomeDetails(),
          ),
        ],
      );
  }
}
