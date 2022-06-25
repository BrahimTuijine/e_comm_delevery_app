import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustumBodyAuth extends StatelessWidget {
  final String text;

  const CustumBodyAuth({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: AppColors.grey, fontSize: 18),
    );
  }
}