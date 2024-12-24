import 'package:abu_sahiy_pdi/common/extensions/text_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/custom_color.dart';

class CustomTextInputWidget extends StatelessWidget {
  const CustomTextInputWidget(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.isPassword,
      required this.controller,
      required this.onTap,
      required this.onComplete,
      required this.onEditingComplete,
      this.hideIcon,
      this.hidePassword,
      this.isHide = true,
      this.textInputType = TextInputType.emailAddress,
      required this.isError,
        required this.errorText,
         this.backgroundColor=ResColors.textInputColor,
        this.onChanged,
      });

  final VoidCallback onTap;
  final VoidCallback onEditingComplete;
  final VoidCallback? hidePassword;
  final void Function(dynamic) onComplete;
  final String hintText;
  final Widget prefixIcon;
  final Widget? hideIcon;
  final bool isPassword;
  final bool isHide;
  final bool isError;
  final TextEditingController controller;
  final TextInputType textInputType;
  final String errorText;
  final Color backgroundColor;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(

          width: double.maxFinite,
          height: 60.h,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: isError?ResColors.emptyError:ResColors.textInputColor)
          ),
          child: TextFormField(
            controller: controller,
            onTap: onTap,
            onTapOutside: onComplete,
            onChanged:onChanged ,
            onEditingComplete: onEditingComplete,
            keyboardType: textInputType,
            obscureText: isPassword ? isHide : false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: InputDecoration(
              prefixIcon:Align(
                widthFactor: 1,
                alignment: Alignment.center,
                child: prefixIcon,
              ),
              suffixIcon:
              isPassword?
            GestureDetector(
            onTap: hidePassword,
            child: Container(
              margin: const EdgeInsets.only(
                left: 12,
              ),
              width: 20,
              height: 20,
              child: Icon(
                isHide
                    ? Icons.visibility_off_outlined
                    :Icons.visibility_outlined ,
              ),
            ),
          ):null ,
              contentPadding: const EdgeInsets.only(),
              enabled: true,
              hintText: hintText,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ResColors.lightGreyText),
            ),
            style: const TextStyle(
                color: ResColors.primaryBlackText,
                fontWeight: FontWeight.w600,
                fontSize: 14),
          ),
        ),
        Container(
          width: double.maxFinite,
          margin: const EdgeInsets.only(
            top: 6,
            left: 8
          ),
          child:errorText.s(14).w(600).c(ResColors.emptyError) ,
        )
      ],
    );
  }
}
