import 'package:flutter/material.dart';
import 'package:shopping_app/features/on_boarding/controller/on_boarding_controller.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/utils/devices/device_utility.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/constants/colors.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: Sizes.defaultSpace,
        bottom: DeviceUtility.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.primary,
            minimumSize: const Size(60, 60),
          ),
          child: const Icon(
            Iconsax.arrow_right_3,
            color: Colors.white,
          ),
        ));
  }
}