import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_color.freezed.dart';
part 'language_color.g.dart';

@freezed
class LanguageColor with _$LanguageColor {
  const factory LanguageColor({
    @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
    required Color? color,
    required String name,
    required String url,
  }) = _LanguageColor;

  factory LanguageColor.fromJson(Map<String, dynamic> json) =>
      _$LanguageColorFromJson(json);
}

Color? _colorFromJson(String? json) {
  if (json == null) {
    return null;
  }
  final tmpColorCode = int.tryParse(json.substring(1), radix: 16);
  return tmpColorCode == null
      ? null
      : Color(
          tmpColorCode + 0xFF000000,
        );
}

String? _colorToJson(Color? color) {
  if (color == null) {
    return null;
  }
  return '#${color.value.toRadixString(16).padLeft(8, '0').substring(2)}';
}
