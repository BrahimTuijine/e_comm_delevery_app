import 'package:e_comm_app_delevery/core/localization/change_local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                '1'.tr,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.changeLang("ar");
              },
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "arabic",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                controller.changeLang("en");
              },
              child: const Padding(
                padding: EdgeInsets.all(11),
                child: Text(
                  "english",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
