import 'package:abu_sahiy_pdi/common/constants/custom_color.dart';
import 'package:abu_sahiy_pdi/common/extensions/text_extensions.dart';
import 'package:abu_sahiy_pdi/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppBar({required String title,  VoidCallback? onTap,}){
  return AppBar(
    backgroundColor: ResColors.primaryBackground,
    flexibleSpace: Container(
      margin: EdgeInsets.only(
        top: 12,
        left: 20,
      ),
      width: double.maxFinite,
      height: 100,
      child:Row(
crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if(onTap!=null)
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 16.h),
              width:36.w,
              height: 36.h,
              child: Assets.icons.appBackIcon.svg(width: 16,height: 16),
            ),
          ),
        ],
      ),
    ),
    title: title.s(20).c(ResColors.primaryBlackText).w(500),
    centerTitle: true,
  );
}
