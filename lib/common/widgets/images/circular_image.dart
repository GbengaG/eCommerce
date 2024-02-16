import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 56,
    this.height =  56,
    this.padding = TSizes.sm,
    this.fit = BoxFit.cover,
    this.isNetworkImage =  false,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
  });

  final double width, height, padding;
  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? overlayColor, backgroundColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    final dark =  THelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:
            dark ? TColors.black : Colors.white,
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage? NetworkImage(image): AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
