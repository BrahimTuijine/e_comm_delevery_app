import 'package:e_comm_app_delevery/controller/onboarding_controller.dart';
import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:e_comm_app_delevery/view/widgets/auth/custum_body_auth.dart';
import 'package:e_comm_app_delevery/view/widgets/auth/custum_textform.dart';
import 'package:e_comm_app_delevery/view/widgets/auth/custum_title.dart';
import 'package:e_comm_app_delevery/view/widgets/auth/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    Get.delete<OnboardingControllerImp>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Sign In',
          style: TextStyle(
              color: AppColors.grey, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .2 / 3),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    const LogoAuth(),
                    const CustumTitle(
                      title: 'Welcome back',
                    ),
                    const CustumBodyAuth(
                      text: 'Sign in with your email and password',
                    ),
                    const CustumBodyAuth(
                      text: 'or continue with social media',
                    ),
                    SizedBox(
                      height: Get.width * .1,
                    ),
                    Form(
                      child: Column(
                        children: <Widget>[
                          CustumTextFormAuth(
                            hintText: "Enter your email",
                            icon: const Icon(
                              Icons.email_outlined,
                              color: AppColors.grey,
                            ),
                            label: const Text('Email'),
                            onsave: (String? newValue) {},
                            validator: (String? value) {
                              return null;
                            },
                          ),
                          SizedBox(
                            height: Get.width * .2 / 3,
                          ),
                          CustumTextFormAuth(
                            hintText: "Enter your password",
                            icon: const Icon(
                              Icons.lock_outline,
                              color: AppColors.grey,
                            ),
                            label: const Text('Password'),
                            onsave: (String? newValue) {},
                            validator: (String? value) {
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: Get.width * .1 / 2),
                      child: Container(
                          alignment: Alignment.topRight,
                          child: const Text(
                            'Forget Password',
                            style: TextStyle(
                              color: AppColors.grey,
                            ),
                          )),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textColor: AppColors.backgroundcolor,
                      minWidth: double.infinity,
                      color: AppColors.primaryColor,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(Get.width * .1 / 4),
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: Get.width * .1 / 2),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.width * .1 / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('Dont have an account ? '),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: Get.width * .2 / 5),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
