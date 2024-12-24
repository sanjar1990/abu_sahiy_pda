
import 'package:abu_sahiy_pdi/common/base/base_cubit.dart';
import 'package:abu_sahiy_pdi/features/search_branch/cubit/search_branch_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchBranchCubit extends BaseCubit<SearchBranchBuildable,SearchBranchListenable> {
  SearchBranchCubit() : super(const SearchBranchBuildable());
      void changeLoading(){
        build((buildable)=>buildable.copyWith(isLoading: !buildable.isLoading));
      }
}
