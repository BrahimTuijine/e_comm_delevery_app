import 'package:e_comm_app_delevery/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLang(String codelang) {
    Locale locale = Locale(codelang);
    myServices.sharedPreferences.setString("lang", codelang);
    Get.updateLocale(locale);
    Get.offAllNamed("/onboarding");
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");

    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
