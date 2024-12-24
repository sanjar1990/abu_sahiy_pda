import 'package:abu_sahiy_pdi/common/base/base_state.dart';
import 'package:abu_sahiy_pdi/common/di/injection.dart';
import 'package:abu_sahiy_pdi/common/widgets/display/display.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';


abstract class BaseCubit<BUILDABLE, LISTENABLE>
    extends Cubit<BaseState<BUILDABLE, LISTENABLE>> {
  late BUILDABLE buildable;

  final log = getIt<Logger>();
  final display = getIt<Display>();

  BaseCubit(BUILDABLE initialBuildable)
      : super(BaseState(buildable: initialBuildable)) {
    buildable = initialBuildable;
  }

  build(BUILDABLE Function(BUILDABLE buildable) builder) {
    buildable = builder(buildable);
    if (isClosed) return;
    emit(BaseState(buildable: buildable));
  }

  invoke(LISTENABLE listenable) {
    if (isClosed) return;
    emit(BaseState(listenable: listenable));
    build((buildable) => buildable);
  }

  Future<void> streamable<T>({
    required Stream<T> stream,
    BUILDABLE Function()? buildOnStart,
    BUILDABLE Function(T data)? buildOnData,
    BUILDABLE Function(dynamic e)? buildOnError,
    BUILDABLE Function()? buildOnDone,
    LISTENABLE Function()? invokeOnStart,
    LISTENABLE Function(T data)? invokeOnData,
    LISTENABLE Function(dynamic e)? invokeOnError,
    LISTENABLE Function()? invokeOnDone,
    Function(T data)? onData,
    Function()? onDone,
  }) {
    if (buildOnStart != null) build((buildable) => buildOnStart());
    if (invokeOnStart != null) invoke(invokeOnStart());
    return stream.listen(
          (event) {
        if (buildOnData != null) {
          build((buildable) => buildOnData(event));
        }
        if (invokeOnData != null) invoke(invokeOnData(event));
        if (onData != null) onData(event);
      },
      onError: (e, stackTrace) {
        log.e(e.toString(), error: e, stackTrace: stackTrace);
        if (buildOnError != null) {
          build((buildable) => buildOnError(e));
        }
        if (invokeOnError != null) invoke(invokeOnError(e));
      },
      onDone: () {
        if (buildOnDone != null) build((buildable) => buildOnDone());
        if (invokeOnDone != null) invoke(invokeOnDone());
        if (onDone != null) onDone();
      },
    ).asFuture();
  }

  Future<void> callable<T>({
    required Future<T> future,
    BUILDABLE Function()? buildOnStart,
    BUILDABLE Function(T data)? buildOnData,
    BUILDABLE Function(dynamic e)? buildOnError,
    BUILDABLE Function()? buildOnDone,
    LISTENABLE Function()? invokeOnStart,
    LISTENABLE Function(T data)? invokeOnData,
    LISTENABLE Function(dynamic e)? invokeOnError,
    LISTENABLE Function()? invokeOnDone,
    Function(T data)? onData,
    Function(String e)? onErrorData,
  }) async {
    if (buildOnStart != null) build((buildable) => buildOnStart());
    if (invokeOnStart != null) invoke(invokeOnStart());
    try {
      final data = await future;
      if (buildOnData != null) build((buildable) => buildOnData(data));
      if (invokeOnData != null) invoke(invokeOnData(data));
      if (onData != null) onData(data);
    }on DioException catch(e,stackTrace){
      log.e(e.toString(), error: e, stackTrace: stackTrace);
      const error = '';
      if (buildOnError != null) build((buildable) => buildOnError(error));
      if (invokeOnError != null) invoke(invokeOnError(error));
      if (onErrorData != null) onErrorData(error);
    } catch (e, stackTrace) {
      log.e(e.toString(), error: e, stackTrace: stackTrace);
      final error =
          ((e as DioException).response?.data['error'] ?? '').toString();
      if (buildOnError != null) build((buildable) => buildOnError(error));
      if (invokeOnError != null) invoke(invokeOnError(error));
      if (onErrorData != null) onErrorData(error);
    } finally {
      if (buildOnDone != null) build((buildable) => buildOnDone());
      if (invokeOnDone != null) invoke(invokeOnDone());
    }
  }
}
