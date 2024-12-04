import 'package:admin_dashboard/core/models/expenses_item_model.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.expensesItemModel, required this.isActive});

  final ExpensesItemModel expensesItemModel ;
  final bool isActive  ;
  @override
  Widget build(BuildContext context) {
    return  isActive ?
        activeExpensesItem(context, expensesItemModel) :
      unActiveExpensesItem(context, expensesItemModel);
  }

  Widget activeExpensesItem(BuildContext context ,  ExpensesItemModel expensesItemModel){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: AppColor.mainPictonBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white10,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    expensesItemModel.activeImage,
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios ,
                size: 24,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 34,
          ),
          Text(expensesItemModel.title , style: AppTextStyles.font16WhiteSemiBold(context),),
          SizedBox(
            height: 8,
          ),
          Text('April 2022' , style: AppTextStyles.font14LotionRegular(context),),
          SizedBox(
            height: 16,
          ),
          Text('\$20,129' , style: AppTextStyles.font24WhiteSemiBold(context),),
        ],
      ),
    );
  }

  Widget unActiveExpensesItem(BuildContext context ,  ExpensesItemModel expensesItemModel){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.antiFlashWhite
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.lotion,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    expensesItemModel.inActiveImage,
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios ,
                size: 24,
                color: AppColor.ateneoBlue,
              )
            ],
          ),
          SizedBox(
            height: 34,
          ),
          Text(expensesItemModel.title , style: AppTextStyles.font16AteneoBlueSemiBold(context),),
          SizedBox(
            height: 8,
          ),
          Text('April 2022' , style: AppTextStyles.font14DarkGrayRegular(context),),
          SizedBox(
            height: 16,
          ),
          Text('\$20,129' , style: AppTextStyles.font24MainBlueSemiBold(context),),
        ],
      ),
    );
  }

}