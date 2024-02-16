import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/text_widgets/section_heading.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const TBrandShowcase(images: [TImages.banner2,TImages.banner2,TImages.banner2]),
              const SizedBox(height: TSizes.spaceBtwItems,),


              /// Products
              TSectionHeading(title: "You might like", showActionButton: true,onPressed: (){},),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TGridLayout(itemCount: 4, itemBuilder: (_,index)=>const TProductCardVertical())

            ],
          ),
        ),
      ],
    );
  }
}
