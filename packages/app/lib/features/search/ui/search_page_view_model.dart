import 'package:bff_api_types/bff_api_types.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_page_view_model.g.dart';

@riverpod
class RepositorySearchViewModel extends _$RepositorySearchViewModel {
  @override
  AsyncValue<List<RepositorySearchResponseItem>>? build() => null;
}
