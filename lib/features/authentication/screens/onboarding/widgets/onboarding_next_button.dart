import 'package:e_commerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: const BorderSide(),
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : Colors.black),
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
