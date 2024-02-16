import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(child:
        Padding(padding: const EdgeInsets.all(TSizes.defaultSpace), child: Column(
          children: [
            /// Image with 60% of the screen
            Image(
              image: const AssetImage(TImages.onBoardingImage2),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Title & Subtitle
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TTexts.tContinue),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
          ],
        ),),),
    );
  }
}
