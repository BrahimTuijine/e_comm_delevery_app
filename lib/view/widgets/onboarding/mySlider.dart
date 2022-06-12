
import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:e_comm_app_delevery/data/data_sourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MySlider extends StatelessWidget {
  const MySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
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
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
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
              child: Text(
                onBordingList[i].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    height: 2, fontSize: 20, color: AppColors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
