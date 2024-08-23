import 'package:docdoc/app_images.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorStack extends StatelessWidget {
  const DoctorStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: EdgeInsetsDirectional.only(end: 20.w),
            child: Image.asset(AppImages.logoLowOpacity)),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.14, 0.4])),
            child: Image.asset(AppImages.doctor)),
        Positioned(
            bottom: 10.h,
            right: 0,
            left: 0,
            child: Text(
              "Best Doctor\nAppointment App",
              style: TextStyles.bold32blue(context).copyWith(height: 1.4),
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
