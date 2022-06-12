import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:e_comm_app_delevery/data/data_sourse/static/static.dart';
import 'package:flutter/material.dart';

class MyStepper extends StatelessWidget {
  const MyStepper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ...List.generate(
          onBordingList.length,
          (index) => AnimatedContainer(
            margin: const EdgeInsets.only(right: 5),
            duration: const Duration(seconds: 1),
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
