import 'package:e_comm_app_delevery/core/constants/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImagesAssets.logo,
      height: Get.width * .3,
    );
  }
}
