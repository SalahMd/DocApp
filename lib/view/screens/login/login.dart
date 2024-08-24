import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/functions/dimenesions.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/colors/colors.dart';
import 'package:docdoc/view/screens/login/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyles.bold24blue(context),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                          style: TextStyles.w40014grey(context),
                        ),
                      ])),
              SizedBox(
                height: 36.h,
              ),
              TextFields(),
              SizedBox(height: 41.h),
              GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.homeScreen);
                },
                child: Container(
                  width: Dimensions.screenWidth(context),
                  height: 52.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: LightAppColors.primaryColor),
                  child: Text(
                    "Login",
                    style: TextStyles.w50016White(context),
                  ),
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      color: LightAppColors.lighterGrey,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "Or sign in with",
                        style: TextStyles.w40012grey(context),
                      )),
                  const Expanded(
                      child: Divider(
                    thickness: 1,
                    color: LightAppColors.lighterGrey,
                  )),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
