import 'package:abu_sahiy_pdi/common/base/base_cubit.dart';
import 'package:abu_sahiy_pdi/domain/repo/start_repo.dart';
import 'package:abu_sahiy_pdi/features/start/splash/cubit/splash_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SplashCubit extends BaseCubit<SplashBuildable, SplashListenable> {
  SplashCubit(this._repo) : super(const SplashBuildable()) {
    getOnboarded();
    _init();
  }

  final StartRepo _repo;

  void _init() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (buildable.onBoarded) {
          invoke(const SplashListenable(effect: SplashEffect.login));
        } else {
          invoke(const SplashListenable(effect: SplashEffect.onBoarding));
        }
      },
    );
  }

  void getOnboarded() {
    final result = _repo.getOnboarded();
    build((buildable) => buildable.copyWith(onBoarded: result));
  }
}
