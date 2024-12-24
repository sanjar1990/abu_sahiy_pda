
import 'package:abu_sahiy_pdi/common/base/base_cubit.dart';
import 'package:abu_sahiy_pdi/common/widgets/display/display.dart';
import 'package:abu_sahiy_pdi/features/start/test/cubit/test_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class TestCubit extends BaseCubit<TestBuildable,TestListenable> {
  TestCubit() : super(const TestBuildable());

    void changeAge(){
      build((buildable)=>buildable.copyWith(age: buildable.age+1));
      invoke(const TestListenable( effect: Effect.success));
    }


}
