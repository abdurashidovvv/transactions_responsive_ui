import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transactions/config/size_config.dart';
import 'package:transactions/style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      color: AppColors.secondaryBg,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 35,
                width: 35,
                child: SvgPicture.asset(
                  'assets/images/mac-action.svg',
                ),
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/home.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20.0,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/pie-chart.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20.0,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/clipboard.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20.0,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/credit-card.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20.0,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/trophy.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20.0,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/invoice.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20.0,
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
