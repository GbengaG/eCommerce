import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce_app/common/widgets/custom-shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_app/common/widgets/brand/brand_card.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              color: Colors.black,
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 440,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      /// Shrink wrap makes the List view take up only the space used by the children of the list view
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const TSearchContainer(
                            text: "Search in store",
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// Feature Brands
                        TSectionHeading(
                          title: "Feature Brands",
                          showActionButton: true,
                          onPressed: () {},
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                        ///Custom Brands
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(
                                showBorder: false,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: const TTabBar(
                    tabs: [
                      Tab(
                        child: Text("Sport"),
                      ),
                      Tab(
                        child: Text("Furniture"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Clothes"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      ),
                    ],
                  )),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),

            ],
          ),
        ),
      ),
    );
  }
}

