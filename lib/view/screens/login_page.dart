import 'package:e_comm_app_delevery/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: Get.width * .1 / 2),
          child: IconButton(
            color: AppColors.grey,
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Sign In',
          style: TextStyle(color: AppColors.grey, fontSize: 20),
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
                    SizedBox(height: Get.height * .1 / 2),
                    const Text(
                      'Welcome back',
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Get.width * .1 / 4),
                      child: const Text(
                        'Sign in with your email and password',
                        style: TextStyle(color: AppColors.grey, fontSize: 18),
                      ),
                    ),
                    const Text(
                      'or continue with social media',
                      style: TextStyle(color: AppColors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      height: Get.width * .2,
                    ),
                    Form(
                        child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: Get.width * .1 / 2,
                                horizontal: Get.width * .2 / 2),
                            suffixIcon: Container(
                              margin:
                                  EdgeInsets.only(right: Get.width * .1 / 2),
                              child: const Icon(
                                Icons.email_outlined,
                                color: AppColors.grey,
                              ),
                            ),
                            // labelStyle: ,
                            label: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Email'),
                            ),
                            hintText: "Enter your email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(Get.width * .1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
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
