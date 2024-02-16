import 'package:e_commerce_app/common/widgets/text_widgets/brand_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandWithVerifiedIcon extends StatelessWidget {
  const TBrandWithVerifiedIcon(
      {super.key,
      required this.title,
      this.maxLines = 1,
      this.textColor,
      this.iconColor = TColors.primary,
      this.textAlign = TextAlign.center,
      this.brandTextSizes = TextSizes.small
      });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,
                  ),
          Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs,)
        ],
      ),
    );
  }
}
