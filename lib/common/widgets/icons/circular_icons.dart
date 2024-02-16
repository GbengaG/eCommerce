import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  /// Custom circular icon widget with a background color
  ///
  /// Properties:
  /// Container[width],   [height] & [backgroundColor]
  ///
  ///
  /// Icon's [size ],   [color] & [onPressed]
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.color,
    this.backgroundColor,
    required this.icon,
    this.onPressed,
  });

  final double? width, height, size;
  final Color? color, backgroundColor;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? TColors.black.withOpacity(0.9)
                : Colors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: size, color: color,),
      ),
    );
  }
}
