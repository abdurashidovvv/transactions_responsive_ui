import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transactions/components/app_bar_action_items.dart';
import 'package:transactions/components/payment_detail_list.dart';
import 'package:transactions/components/sidemenu.dart';
import 'package:transactions/config/size_config.dart';
import 'package:transactions/style/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 1,
            child: SideMenu(),
          ),
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              height: SizeConfig.screenHeight,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              height: SizeConfig.screenHeight,
              color: AppColors.secondaryBg,
              child: const SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                child: Column(
                  children: [AppBarActionItems(), PaymentDetailList()],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
