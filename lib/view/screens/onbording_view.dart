import 'package:e_comm_app_delevery/controller/onboarding_controller.dart';
import 'package:e_comm_app_delevery/view/widgets/onboarding/custom_button.dart';
import 'package:e_comm_app_delevery/view/widgets/onboarding/mySlider.dart';
import 'package:e_comm_app_delevery/view/widgets/onboarding/stepper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OnbordingView extends GetView<OnboardingControllerImp> {
  const OnbordingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
        body: Column(
      children: <Widget>[
        const Expanded(
          flex: 3,
          child: MySlider(),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              MyStepper(),
              CustumButton(onpress: () {
                controller.next();
              }),
            ],
          ),
        )
      ],
    ));
  }
}
