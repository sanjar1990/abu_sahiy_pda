import 'package:abu_sahiy_pdi/features/start/onboarding/onboarding.dart';
import 'package:abu_sahiy_pdi/features/start/splash/splash_page.dart';
import 'package:abu_sahiy_pdi/features/start/test/test_one_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page,initial: false, path: '/splash'),
    AutoRoute(page: TestOneRoute.page, initial: true, path: '/test'),

  ];
}
