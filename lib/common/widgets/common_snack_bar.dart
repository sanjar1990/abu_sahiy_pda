import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/custom_color.dart';

void showSnackBar({required String text, Color? backgroundColor, Duration? duration, required BuildContext context  }) {

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height - 100,
            right: 20,
            left: 20),
        duration: duration?? const Duration(seconds: 2),
        backgroundColor: backgroundColor?? ResColors.primaryColor,
        content: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp
          ),
        ),),);
}