import 'package:abu_sahiy_pdi/common/extensions/text_extensions.dart';
import 'package:abu_sahiy_pdi/common/widgets/scale_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/custom_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    this.color=ResColors.primaryColor,
    required this.text,
    this.radius = 100,
    this.margin = const EdgeInsets.symmetric(horizontal: 24),
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
     this.isLoading=false,
  });

  final VoidCallback onTap;
  final Color color;
  final String text;
  final double radius;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return WScaleAnimation(
      onTap: () => onTap(),
      child: Container(
        margin: margin,
        padding: padding,
        width: double.maxFinite,
        height: 58,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [ BoxShadow(
            offset: const Offset(0, 4),
            color: Colors.blue.shade200,
            blurRadius: 10,
          ),],

        ),
        child: Center(child: isLoading? const CircularProgressIndicator(

          color: ResColors.whiteColor,)
            :text.s(16).c(ResColors.whiteColor).w(700)),
      ),
    );
  }
}
