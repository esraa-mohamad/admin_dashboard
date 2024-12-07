import 'package:flutter/material.dart';

import 'income_section_body.dart';
import 'income_header.dart';

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
          IncomeHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
