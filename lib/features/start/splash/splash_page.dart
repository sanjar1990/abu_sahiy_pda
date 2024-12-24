import 'dart:async';
import 'package:abu_sahiy_pdi/common/base/base_page.dart';
import 'package:abu_sahiy_pdi/common/extensions/text_extensions.dart';
import 'package:abu_sahiy_pdi/common/router/app_router.dart';
import 'package:abu_sahiy_pdi/features/start/splash/cubit/splash_cubit.dart';
import 'package:abu_sahiy_pdi/features/start/splash/cubit/splash_state.dart';
import 'package:abu_sahiy_pdi/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../common/constants/custom_color.dart';

@RoutePage()
class SplashPage
    extends BasePage<SplashCubit, SplashBuildable, SplashListenable> {
  const SplashPage({super.key});

  @override
  void listener(BuildContext context, SplashListenable state) {
    super.listener(context, state);
    switch(state.effect){

      case SplashEffect.login:
        // context.router.replaceAll([const AuthMainRoute()]);
        break;
      case SplashEffect.onBoarding:
        context.router.replaceAll([const OnBoardingRoute()]);
        break;
      case null:
      break;
    }
  }
  //
  // @override
  //  void init(BuildContext context) {
  //   super.init(context);
  //   Timer(const Duration(seconds: 5),
  //       () => context.router.replace(const OnBoardingRoute()));
  //  }

  @override
  Widget builder(BuildContext context, SplashBuildable state) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 100, top: height * 0.44),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.medicaLogo.svg(),
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: "Medica".s(48).c(ResColors.primaryBlackText).w(700),
                  )
                ],
              ),
              const Spacer(),
              const SizedBox(
                width: 60,
                height: 60,
                child: LoadingIndicator(
                  indicatorType: Indicator.ballRotateChase,
                  colors: [ResColors.primaryColor],
                  strokeWidth: 2,
                  backgroundColor: Colors.white,
                  pathBackgroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
