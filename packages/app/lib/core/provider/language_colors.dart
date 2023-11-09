import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_colors.freezed.dart';
part 'language_colors.g.dart';

/// [LanguageColor]のリストを保持するProvider
final languageColorsProvider =
    Provider<List<LanguageColor>>((ref) => throw UnimplementedError());

/// LanguageColorのリストをassetsから読み取る
Future<List<LanguageColor>> loadLanguageColors() async {
  final fileData = await rootBundle.loadString('assets/colors.json');
  final json = (jsonDecode(fileData) as List<dynamic>)
      .map((dynamic e) => e as Map<String, dynamic>);
  return json.map(LanguageColor.fromJson).toList();
}

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
