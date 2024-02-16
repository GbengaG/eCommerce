import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});
final List <Widget> tabs;
  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark? TColors.black:TColors.white,
      child: TabBar(isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.light : TColors.primary,
        unselectedLabelColor: TColors.darkerGrey,
        tabs: tabs),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
