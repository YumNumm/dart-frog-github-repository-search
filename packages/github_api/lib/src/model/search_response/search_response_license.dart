import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_response_license.freezed.dart';
part 'search_response_license.g.dart';

@freezed
class SearchResponseLicense with _$SearchResponseLicense {
  const factory SearchResponseLicense({
    required String key,
    required String name,
    required String? spdxId,
    required String? url,
  }) = _SearchResponseLicense;

  factory SearchResponseLicense.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseLicenseFromJson(json);
}
