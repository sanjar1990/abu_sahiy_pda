import 'package:abu_sahiy_pdi/common/base/base_cubit.dart';
import 'package:abu_sahiy_pdi/domain/repo/start_repo.dart';
import 'package:abu_sahiy_pdi/features/start/onboarding/cubit/on_boarding_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class OnBoardingCubit
    extends BaseCubit<OnBoardingBuildable, OnBoardingListenable> {
  OnBoardingCubit(this._repo) : super(const OnBoardingBuildable());

  final StartRepo _repo;

  int index = 1;

  void changePage() {
    build(
      (buildable) => buildable.copyWith(page: index++),
    );
  }

  void setOnboarded()=>callable(future: _repo.setOnboarded());
}
