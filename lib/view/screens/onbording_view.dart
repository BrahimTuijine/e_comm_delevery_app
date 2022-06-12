import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:e_comm_app_delevery/data/data_sourse/static/static.dart';
import 'package:e_comm_app_delevery/view/widgets/onboarding/custom_button.dart';
import 'package:e_comm_app_delevery/view/widgets/onboarding/mySlider.dart';
import 'package:e_comm_app_delevery/view/widgets/onboarding/stepper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OnbordingView extends GetView {
  const OnbordingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        const Expanded(
          flex: 3,
          child: MySlider(),
        ),
        Expanded(
          child: Column(
            children: const <Widget>[
              MyStepper(),
              CustumButton(),
            ],
          ),
        )
      ],
    ));
  }
}
