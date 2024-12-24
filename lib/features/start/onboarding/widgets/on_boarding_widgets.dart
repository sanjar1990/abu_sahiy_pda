import 'package:abu_sahiy_pdi/common/extensions/text_extensions.dart';
import 'package:abu_sahiy_pdi/domain/model/on_boarding_model/on_boarding_model.dart';
import 'package:abu_sahiy_pdi/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/constants/custom_color.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget(
      {super.key,
        required this.list,
      required this.index,
      });
  final List<OnBoardingModel> list;
  final int index;


  @override
  Widget build(BuildContext context) {
    return     AnimatedSwitcher(
      duration: const Duration(milliseconds: 1000),
      child: Container(
        key: Key(list[index].key.toString()),
        width: double.infinity,
        margin:  EdgeInsets.only(top: 98.h, left: 30.w, right: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin:  EdgeInsets.only(bottom: 38.h),
              height: 426.h,
              width: 367.w,
              child: Stack(
                children: [
                  Assets.icons.onboardingPictureBackground.svg(),
                  Center(child: list[index].picture)
                ],
              ),
            ),
            Container(
              child: list[index]
                  .text
                  .s(38.sp)
                  .c(ResColors.primaryColor)
                  .w(700)
                  .copyWith(textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );

  }
}
