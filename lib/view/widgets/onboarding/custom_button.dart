import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustumButton extends StatelessWidget {
  const CustumButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.width * .1),
      width: Get.width * .8,
      height: Get.height * .3 / 4,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)),
        onPressed: () {},
        child: const Text(
          "Continue",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
