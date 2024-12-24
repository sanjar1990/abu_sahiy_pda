import 'package:abu_sahiy_pdi/common/extensions/text_extensions.dart';
import 'package:abu_sahiy_pdi/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/constants/custom_color.dart';

class SignInLogo extends StatelessWidget {
  const SignInLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(
              top: 96.h,
            ),
            height: 140.h,
            width: 140.w,
            child: Assets.icons.medicaAuthLogo.svg()),
        Container(
          margin:  EdgeInsets.only(
            top: 35.h,
          ),
          child: "Login to Your Account"
              .s(32.sp)
              .w(700)
              .c(ResColors.primaryBlackText),
        ),
      ],
    );
  }
}
