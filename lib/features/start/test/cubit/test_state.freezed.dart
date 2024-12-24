// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestBuildable {
  int get age => throw _privateConstructorUsedError;

  /// Create a copy of TestBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestBuildableCopyWith<TestBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestBuildableCopyWith<$Res> {
  factory $TestBuildableCopyWith(
          TestBuildable value, $Res Function(TestBuildable) then) =
      _$TestBuildableCopyWithImpl<$Res, TestBuildable>;
  @useResult
  $Res call({int age});
}

/// @nodoc
class _$TestBuildableCopyWithImpl<$Res, $Val extends TestBuildable>
    implements $TestBuildableCopyWith<$Res> {
  _$TestBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestBuildableImplCopyWith<$Res>
    implements $TestBuildableCopyWith<$Res> {
  factory _$$TestBuildableImplCopyWith(
          _$TestBuildableImpl value, $Res Function(_$TestBuildableImpl) then) =
      __$$TestBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int age});
}

/// @nodoc
class __$$TestBuildableImplCopyWithImpl<$Res>
    extends _$TestBuildableCopyWithImpl<$Res, _$TestBuildableImpl>
    implements _$$TestBuildableImplCopyWith<$Res> {
  __$$TestBuildableImplCopyWithImpl(
      _$TestBuildableImpl _value, $Res Function(_$TestBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
  }) {
    return _then(_$TestBuildableImpl(
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TestBuildableImpl implements _TestBuildable {
  const _$TestBuildableImpl({this.age = 0});

  @override
  @JsonKey()
  final int age;

  @override
  String toString() {
    return 'TestBuildable(age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestBuildableImpl &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, age);

  /// Create a copy of TestBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestBuildableImplCopyWith<_$TestBuildableImpl> get copyWith =>
      __$$TestBuildableImplCopyWithImpl<_$TestBuildableImpl>(this, _$identity);
}

abstract class _TestBuildable implements TestBuildable {
  const factory _TestBuildable({final int age}) = _$TestBuildableImpl;

  @override
  int get age;

  /// Create a copy of TestBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestBuildableImplCopyWith<_$TestBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TestListenable {
  Effect get effect => throw _privateConstructorUsedError;

  /// Create a copy of TestListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestListenableCopyWith<TestListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestListenableCopyWith<$Res> {
  factory $TestListenableCopyWith(
          TestListenable value, $Res Function(TestListenable) then) =
      _$TestListenableCopyWithImpl<$Res, TestListenable>;
  @useResult
  $Res call({Effect effect});
}

/// @nodoc
class _$TestListenableCopyWithImpl<$Res, $Val extends TestListenable>
    implements $TestListenableCopyWith<$Res> {
  _$TestListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
  }) {
    return _then(_value.copyWith(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as Effect,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestListenableImplCopyWith<$Res>
    implements $TestListenableCopyWith<$Res> {
  factory _$$TestListenableImplCopyWith(_$TestListenableImpl value,
          $Res Function(_$TestListenableImpl) then) =
      __$$TestListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Effect effect});
}

/// @nodoc
class __$$TestListenableImplCopyWithImpl<$Res>
    extends _$TestListenableCopyWithImpl<$Res, _$TestListenableImpl>
    implements _$$TestListenableImplCopyWith<$Res> {
  __$$TestListenableImplCopyWithImpl(
      _$TestListenableImpl _value, $Res Function(_$TestListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
  }) {
    return _then(_$TestListenableImpl(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as Effect,
    ));
  }
}

/// @nodoc

class _$TestListenableImpl implements _TestListenable {
  const _$TestListenableImpl({required this.effect});

  @override
  final Effect effect;

  @override
  String toString() {
    return 'TestListenable(effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect);

  /// Create a copy of TestListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestListenableImplCopyWith<_$TestListenableImpl> get copyWith =>
      __$$TestListenableImplCopyWithImpl<_$TestListenableImpl>(
          this, _$identity);
}

abstract class _TestListenable implements TestListenable {
  const factory _TestListenable({required final Effect effect}) =
      _$TestListenableImpl;

  @override
  Effect get effect;

  /// Create a copy of TestListenable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestListenableImplCopyWith<_$TestListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
