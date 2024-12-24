import 'package:abu_sahiy_pdi/common/extensions/text_extensions.dart';
import 'package:abu_sahiy_pdi/common/widgets/scale_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/custom_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
     this.isLoading=false,
  });

  final VoidCallback onTap;
  final String text;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return WScaleAnimation(
      onTap: () => onTap(),
      child: Container(
        // padding: padding,
        width: double.maxFinite,
        height: 50.h,
        decoration: BoxDecoration(
          color: ResColors.primaryColor,
          borderRadius: BorderRadius.circular(31.r),
        ),
        child: Center(child: isLoading? const CircularProgressIndicator(

          color: ResColors.whiteColor,)
            :text.s(14).c(ResColors.whiteColor).w(600)),
      ),
    );
  }
}
