import 'package:e_commerce_app/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom-shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom-shapes/container/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/text_widgets/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- Header
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                /// ----- App Bar
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// ---- Search Bar
                TSearchContainer(
                  text: "Search in Store",
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// ---- Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// Categories Heading
                      TSectionHeading(
                        title: "Popular Categories",
                        textColor: TColors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// Categories
                      THomeCategories()
                    ],
                  ),
                )
              ],
            )),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo slider
                  const TPromoSlider(banners: [
                    TImages.banner1,
                    TImages.banner2,
                    TImages.banner3
                  ]),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Heading
                  const TSectionHeading(title: "Popular Products",showActionButton: true, buttonText:'View all',),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  /// Popular products
                  TGridLayout(itemCount: 4,itemBuilder: (_,index)=> const TProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

