import 'package:flutter/material.dart';
import 'package:transactions/components/payment_list_tile.dart';
import 'package:transactions/config/size_config.dart';
import 'package:transactions/data.dart';
import 'package:transactions/style/colors.dart';
import 'package:transactions/style/style.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.blocSizeVertical! * 5),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: AppColors.iconGray,
                    blurRadius: 15.0,
                    offset: Offset(10.0, 15.0))
              ]),
          child: Image.asset('assets/images/card.png'),
        ),
        SizedBox(height: SizeConfig.blocSizeVertical! * 5),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
                text: 'Recent Activities',
                size: 18,
                fontWeight: FontWeight.w800),
            PrimaryText(
                text: '02 Mar 2024',
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.secondary),
          ],
        ),
        SizedBox(height: SizeConfig.blocSizeVertical! * 2),
        Column(
          children: List.generate(
              recentActivities.length,
              (index) => PaymentListTile(
                    icon: recentActivities[index]['icon'],
                    label: recentActivities[index]['label'],
                    amount: recentActivities[index]['amount'],
                  )),
        ),
        SizedBox(height: SizeConfig.blocSizeVertical! * 5),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
                text: 'Upcoming Payments',
                size: 18,
                fontWeight: FontWeight.w800),
            PrimaryText(
                text: '02 Mar 2024',
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.secondary),
          ],
        ),
        SizedBox(height: SizeConfig.blocSizeVertical! * 2),
        Column(
          children: List.generate(
              upcomingPayments.length,
              (index) => PaymentListTile(
                    icon: upcomingPayments[index]['icon'],
                    label: upcomingPayments[index]['label'],
                    amount: upcomingPayments[index]['amount'],
                  )),
        ),
      ],
    );
  }
}
