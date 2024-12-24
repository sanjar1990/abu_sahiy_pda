import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_state.freezed.dart';

@freezed
class TestBuildable with _$TestBuildable {
  const factory TestBuildable({
    @Default(0) int age,
  }) = _TestBuildable;
}

@freezed
class TestListenable with _$TestListenable {
  const factory TestListenable({
    required Effect effect,
  }) = _TestListenable;
}

enum Effect { success, error }
