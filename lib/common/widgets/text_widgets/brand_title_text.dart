import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
    this.color,
    this.iconColor,
    this.icon,
    this.iconSize,
  });

  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  final Color? color, iconColor;
  final IconData? icon;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: maxLines,
          style: brandTextSize == TextSizes.small
              ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
              : brandTextSize == TextSizes.medium
                  ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                  : brandTextSize == TextSizes.large
                      ? Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: color)
                      : Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: color),
          textAlign: textAlign,
        ),
        Icon(icon,color: iconColor,size: iconSize),
      ],
    );
  }
}
