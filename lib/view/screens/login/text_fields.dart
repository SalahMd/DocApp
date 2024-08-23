import 'package:docdoc/core/constants/custom_text_form_filed.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Customtextformfiled(
          hintText: "Email",
          padding: 0,
          labelText: "",
          iconData: null,
          controller: null,
          min: 8,
          max: 32,
          isNumber: false,
          isLabel: false,
          isPassword: false,
          isBorder: true,
        ),
        SizedBox(
          height: 16.h,
        ),
        Customtextformfiled(
          hintText: "Password",
          labelText: "",
          padding: 0,
          isLabel: false,
          iconData: Icons.remove_red_eye,
          controller: null,
          min: 8,
          max: 32,
          isNumber: false,
          isPassword: true,
          isBorder: true,
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(end: 10.w, top: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Forgot password?", style: TextStyles.w50012blue(context))
            ],
          ),
        )
      ],
    );
  }
}
