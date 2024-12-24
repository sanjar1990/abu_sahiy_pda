// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:abu_sahiy_pdi/common/di/app_module.dart' as _i780;
import 'package:abu_sahiy_pdi/common/di/network_module.dart' as _i807;
import 'package:abu_sahiy_pdi/common/widgets/display/display.dart' as _i797;
import 'package:abu_sahiy_pdi/common/widgets/display/display_impl.dart'
    as _i745;
import 'package:abu_sahiy_pdi/common/widgets/display/display_widget.dart'
    as _i687;
import 'package:abu_sahiy_pdi/data/auth_data/auth_api.dart' as _i271;
import 'package:abu_sahiy_pdi/data/auth_data/auth_repo_impl.dart' as _i665;
import 'package:abu_sahiy_pdi/data/otp_data/otp_api.dart' as _i645;
import 'package:abu_sahiy_pdi/data/otp_data/otp_repo_impl.dart' as _i314;
import 'package:abu_sahiy_pdi/data/start/create_pin_repo_impl.dart' as _i28;
import 'package:abu_sahiy_pdi/data/start/fill_profile_info_repo_impl.dart'
    as _i1006;
import 'package:abu_sahiy_pdi/data/start/recover_repo_impl.dart' as _i18;
import 'package:abu_sahiy_pdi/data/start/sign_up_repo_impl.dart' as _i881;
import 'package:abu_sahiy_pdi/data/start/start_repo_impl.dart' as _i131;
import 'package:abu_sahiy_pdi/domain/auth/auth_repo.dart' as _i728;
import 'package:abu_sahiy_pdi/domain/model/auth_interceptor/auth_interceptor.dart'
    as _i432;
import 'package:abu_sahiy_pdi/domain/model/storage/storage.dart' as _i524;
import 'package:abu_sahiy_pdi/domain/otp/otp_repo.dart' as _i543;
import 'package:abu_sahiy_pdi/domain/repo/create_pin_repo.dart' as _i440;
import 'package:abu_sahiy_pdi/domain/repo/fill_profile_info_repo.dart' as _i775;
import 'package:abu_sahiy_pdi/domain/repo/recover_repo.dart' as _i461;
import 'package:abu_sahiy_pdi/domain/repo/sign_up_repo.dart' as _i189;
import 'package:abu_sahiy_pdi/domain/repo/start_repo.dart' as _i8;
import 'package:abu_sahiy_pdi/features/start/onboarding/cubit/on_boarding_cubit.dart'
    as _i40;
import 'package:abu_sahiy_pdi/features/start/splash/cubit/splash_cubit.dart'
    as _i492;
import 'package:abu_sahiy_pdi/features/start/test/cubit/test_cubit.dart'
    as _i576;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i576.TestCubit>(() => _i576.TestCubit());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    await gh.lazySingletonAsync<_i524.Storage>(
      () => _i524.Storage.create(),
      preResolve: true,
    );
    gh.factory<_i8.StartRepo>(() => _i131.StartRepoImpl(gh<_i524.Storage>()));
    gh.lazySingleton<_i432.AuthInterceptor>(
        () => _i432.AuthInterceptor(gh<_i524.Storage>()));
    gh.factory<_i461.RecoverRepo>(
        () => _i18.RecoverRepoImpl(gh<_i524.Storage>()));
    gh.singleton<_i797.Display>(() => _i745.DisplayImpl());
    gh.factory<_i775.FillProfileInfoRepo>(
        () => _i1006.FillProfileInfoRepoImpl(gh<_i524.Storage>()));
    gh.factory<_i440.CreatePinRepo>(
        () => _i28.CreatePinRepoImpl(gh<_i524.Storage>()));
    gh.factory<_i189.SignUpRepo>(
        () => _i881.SignUpRepoImpl(gh<_i524.Storage>()));
    gh.factory<_i687.DisplayWidget>(() => _i687.DisplayWidget(
          key: gh<_i409.Key>(),
          child: gh<_i409.Widget>(),
        ));
    gh.factory<_i361.Dio>(() => networkModule.dio(gh<_i432.AuthInterceptor>()));
    gh.factory<_i40.OnBoardingCubit>(
        () => _i40.OnBoardingCubit(gh<_i8.StartRepo>()));
    gh.factory<_i492.SplashCubit>(() => _i492.SplashCubit(gh<_i8.StartRepo>()));
    gh.factory<_i271.AuthApi>(() => _i271.AuthApi(gh<_i361.Dio>()));
    gh.factory<_i645.OtpApi>(() => _i645.OtpApi(gh<_i361.Dio>()));
    gh.factory<_i543.OtpRepo>(() => _i314.OtpRepoImpl(gh<_i645.OtpApi>()));
    gh.factory<_i728.AuthRepository>(() => _i665.AuthRepoImpl(
          gh<_i271.AuthApi>(),
          gh<_i524.Storage>(),
        ));
    return this;
  }
}

class _$AppModule extends _i780.AppModule {}

class _$NetworkModule extends _i807.NetworkModule {}
