import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:e_comm_app_delevery/core/localization/change_local.dart';
import 'package:e_comm_app_delevery/core/localization/translation.dart';
import 'package:e_comm_app_delevery/core/services/services.dart';
import 'package:e_comm_app_delevery/routes.dart';
import 'package:e_comm_app_delevery/view/screens/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initiaServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.black),
            bodyText1:
                TextStyle(height: 2, fontSize: 20, color: AppColors.grey),
          )),
      debugShowCheckedModeBanner: false,
      home: const Language(),
      routes: routes,
    );
  }
}
