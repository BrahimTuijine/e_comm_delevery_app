import 'package:e_comm_app_delevery/core/constants/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnboardingControllerImp extends OnboardingController {
  final PageController pageController = PageController(initialPage: 0);
  RxInt currentIndex = 0.obs;
  @override
  next() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
    if (currentIndex.value == 3) {
      Get.offAllNamed(AppRoute.login);
    }
  }

  @override
  onPageChange(int index) {
    currentIndex.value = index;
  }
}
