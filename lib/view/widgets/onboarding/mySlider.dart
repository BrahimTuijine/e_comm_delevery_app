// ignore_for_file: file_names

import 'package:e_comm_app_delevery/controller/onboarding_controller.dart';
import 'package:e_comm_app_delevery/data/data_sourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySlider extends GetView<OnboardingControllerImp> {
  const MySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: ((value) {
        controller.onPageChange(value);
      }),
      itemCount: onBordingList.length,
      itemBuilder: (context, i) => Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top: Get.width * 0.1, bottom: Get.width * 0.1),
              child: Text(
                onBordingList[i].title!,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            SizedBox(
              height: Get.width * 0.1 / 2,
            ),
            Image.asset(
              onBordingList[i].image!,
              height: Get.width * .5,
            ),
            SizedBox(
              height: Get.width * 0.1 / 2,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(onBordingList[i].body!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1),
            ),
          ],
        ),
      ),
    );
  }
}
