import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_state.freezed.dart';

@freezed
class OnBoardingBuildable with _$OnBoardingBuildable {
  const factory OnBoardingBuildable({
    @Default(0) int page,
  }) = _OnBoardingBuildable;
}

@freezed
class OnBoardingListenable with _$OnBoardingListenable {
  const factory OnBoardingListenable({
    required Effect effect,
  }) = _OnBoardingListenable;
}

enum Effect { success, error }
