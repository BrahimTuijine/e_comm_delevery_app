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
  }

  @override
  onPageChange(int index) {
    currentIndex.value = index;
  }
}
