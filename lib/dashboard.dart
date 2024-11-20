import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transactions/components/app_bar_action_items.dart';
import 'package:transactions/components/header.dart';
import 'package:transactions/components/info_card.dart';
import 'package:transactions/components/payment_detail_list.dart';
import 'package:transactions/components/sidemenu.dart';
import 'package:transactions/config/size_config.dart';
import 'package:transactions/style/colors.dart';
import 'package:transactions/style/style.dart';

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
            child: SizedBox(
              width: double.infinity,
              height: SizeConfig.screenHeight,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 30.0),
                child: Column(
                  children: [
                    const Header(),
                    SizedBox(height: SizeConfig.blocSizeVertical! * 4),
                    SizedBox(
                      width: SizeConfig.screenWidth,
                      child: const Wrap(
                        runSpacing: 20,
                        spacing: 20,
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          InfoCard(
                            icon: 'assets/images/credit-card.svg',
                            label: 'Transfer via \nCard number',
                            amount: '\$1200',
                          ),
                          InfoCard(
                            icon: 'assets/images/transfer.svg',
                            label: 'Transfer via \nOnline Banks',
                            amount: '\$150',
                          ),
                          InfoCard(
                            icon: 'assets/images/bank.svg',
                            label: 'Transfer \nSame Bank',
                            amount: '\$1500',
                          ),
                          InfoCard(
                            icon: 'assets/images/invoice.svg',
                            label: 'Transfer to \nOther bank',
                            amount: '\$1500',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
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
