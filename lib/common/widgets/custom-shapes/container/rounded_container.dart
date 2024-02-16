import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.radius = TSizes.cardRadiusLg,
      this.child,
      this.borderColor = TColors.borderPrimary,
      this.backgroundColor = Colors.white,
      this.showBorder = false,});

  final double? width, height;
  final EdgeInsetsGeometry? padding, margin;
  final double radius;
  final Widget? child;
  final Color borderColor, backgroundColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
