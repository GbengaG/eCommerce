import 'package:flutter/material.dart';
import 'brand_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom-shapes/container/rounded_container.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });
  final List <String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      borderColor: TColors.darkGrey,
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with products count
          const TBrandCard(showBorder: false,),
          const SizedBox(height: TSizes.spaceBtwItems,),

          /// Brand Tap 3 product images
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()

          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(fit: BoxFit.contain,image: AssetImage(image),),
      ),
    );
  }
}
