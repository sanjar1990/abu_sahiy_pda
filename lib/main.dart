import 'package:abu_sahiy_pdi/common/di/injection.dart';
import 'package:abu_sahiy_pdi/common/router/app_router.dart';
import 'package:abu_sahiy_pdi/common/widgets/display/display_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize:  Size(size.width, size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
        return    DisplayWidget(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Bookimed',
            routerConfig: getIt<AppRouter>().config(),
            theme: ThemeData(
              fontFamily: "Urbanist",
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(color: Colors.white),
            ),
          ),
        );
},
    );

  }
}
