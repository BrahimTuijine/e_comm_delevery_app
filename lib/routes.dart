import 'package:e_comm_app_delevery/core/constants/routes_name.dart';
import 'package:e_comm_app_delevery/view/screens/login_page.dart';
import 'package:e_comm_app_delevery/view/screens/onbording_view.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const LoginPage(),
  AppRoute.onboarding: (context) => const OnbordingView(),
};
