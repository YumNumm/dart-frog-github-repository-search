import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_response_owner.freezed.dart';
part 'search_response_owner.g.dart';

@freezed
class SearchResponseOwner with _$SearchResponseOwner {
  const factory SearchResponseOwner({
    required String login,
    required int id,
    required String nodeId,
    required String avatarUrl,
    required String? gravatarId,
    required String url,
    required String htmlUrl,
  }) = _SearchResponseOwner;

  factory SearchResponseOwner.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseOwnerFromJson(json);
}
