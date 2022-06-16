import 'package:e_comm_app_delevery/controller/onboarding_controller.dart';
import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:e_comm_app_delevery/data/data_sourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyStepper extends GetView<OnboardingControllerImp> {
  const MyStepper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...List.generate(
              onBordingList.length,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(seconds: 1),
                height: 5,
                width: controller.currentIndex.value == index ? 15 : 5,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ));
  }
}
