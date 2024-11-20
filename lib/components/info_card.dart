import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transactions/config/size_config.dart';
import 'package:transactions/style/colors.dart';
import 'package:transactions/style/style.dart';

class InfoCard extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;
  const InfoCard(
      {super.key,
      required this.icon,
      required this.label,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 200.0),
      padding: const EdgeInsets.only(top: 20, left: 20, right: 40, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(icon!, width: 35),
          SizedBox(height: SizeConfig.blocSizeVertical! * 2),
          PrimaryText(
            text: label!,
            color: AppColors.secondary,
            size: 16,
          ),
          SizedBox(height: SizeConfig.blocSizeVertical! * 2),
          PrimaryText(
            text: amount!,
            fontWeight: FontWeight.w700,
            size: 18,
          )
        ],
      ),
    );
  }
}
