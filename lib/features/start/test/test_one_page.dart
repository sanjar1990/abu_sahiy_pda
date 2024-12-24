import 'package:abu_sahiy_pdi/common/base/base_page.dart';
import 'package:abu_sahiy_pdi/common/extensions/text_extensions.dart';
import 'package:abu_sahiy_pdi/features/start/test/cubit/test_cubit.dart';
import 'package:abu_sahiy_pdi/features/start/test/cubit/test_state.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TestOnePage extends BasePage<TestCubit,TestBuildable,TestListenable> {
  const TestOnePage({super.key});
  @override
  void listener(BuildContext context, TestListenable state) {
    switch(state.effect){
      case Effect.success:
        // context.router.replace(route);
        break;
      case  Effect.error:
      print("ERROR");
    }
  }
  @override
  Widget builder(BuildContext context, state) {
   return Scaffold(
     appBar: AppBar(),
     body: Column(
       children: [
         Container(
           child: 'AGE::${state.age}'.s(16).c(Colors.red).w(700),
         ),

         TextButton(onPressed: (){
           context.read<TestCubit>().display.success("description");
           context.read<TestCubit>().changeAge();
         }, child: 'Increment'.s(16))
       ],
     ),
   );
  }
}
