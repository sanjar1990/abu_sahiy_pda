import 'package:abu_sahiy_pdi/common/base/base_page.dart';
import 'package:abu_sahiy_pdi/common/constants/custom_color.dart';
import 'package:abu_sahiy_pdi/common/widgets/custom_app_bar.dart';
import 'package:abu_sahiy_pdi/common/widgets/custom_button.dart';
import 'package:abu_sahiy_pdi/features/search_branch/cubit/search_branch_cubit.dart';
import 'package:abu_sahiy_pdi/features/search_branch/cubit/search_branch_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
@RoutePage()
class SearchBranchPage extends BasePage<SearchBranchCubit,
    SearchBranchBuildable, SearchBranchListenable> {
  const SearchBranchPage({super.key});

  @override
  Widget builder(BuildContext context, state) {
    return Scaffold(
      backgroundColor: ResColors.primaryBackground,
      appBar: customAppBar(title: 'Filial tanlash'),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.w
        ),
        child: Column(
          children: [
              Column(
                children: [

                ],
              ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(
                bottom: 16.h
              ),
              child: CustomButton(onTap: (){
                context.read<SearchBranchCubit>().changeLoading();
              }, text: 'Davom etish',isLoading: state.isLoading,),
            ),
          ],
        ),
      ),
    );
  }
}
