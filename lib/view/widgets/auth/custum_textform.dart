import 'package:get/get.dart';
import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustumTextFormAuth extends StatelessWidget {
  final Widget label;
  final String hintText;
  final FormFieldSetter<String>? onsave;
  final FormFieldValidator<String>? validator;
  final Icon icon;

  const CustumTextFormAuth({
    Key? key,
    required this.label,
    required this.hintText,
    required this.onsave,
    required this.validator,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsave,
      validator: validator,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(
            vertical: Get.width * .1 / 2, horizontal: Get.width * .2 / 2),
        suffixIcon: Container(
          margin: EdgeInsets.only(right: Get.width * .1 / 2),
          child: icon,
        ),
        label: Padding(
          padding: const EdgeInsets.all(10),
          child: label,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(Get.width * .1),
          ),
        ),
      ),
    );
  }
}
