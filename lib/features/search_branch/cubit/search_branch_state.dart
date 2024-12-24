import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_branch_state.freezed.dart';

@freezed
class SearchBranchBuildable with _$SearchBranchBuildable {
  const factory SearchBranchBuildable({
    @Default(false) bool isLoading,
    // List<String>branchList=[];
}) = _SearchBranchBuildable;
}

@freezed
class SearchBranchListenable with _$SearchBranchListenable {
  const factory SearchBranchListenable() = _SearchBranchListenable;
}
