import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustumTitle extends StatelessWidget {
  final String title;
  const CustumTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Get.width * .1 / 4),
      child: Text(
        title,
        style: const TextStyle(
            color: AppColors.black, fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }
}
