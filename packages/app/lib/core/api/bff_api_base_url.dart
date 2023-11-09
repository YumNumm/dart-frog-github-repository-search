import 'package:github_repository_search/core/provider/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bff_api_base_url.g.dart';

@Riverpod(keepAlive: true)
class BffApiBaseUrl extends _$BffApiBaseUrl {
  @override
  String build() {
    final value = ref.read(sharedPreferencesProvider).getString(_prefsKey);
    if (value != null) {
      return value;
    }
    return _default;
  }

  static const _prefsKey = 'bff_api_base_url';

  String get _default => 'https://github.api.yumnumm.dev';

  /// デフォルトのURLに戻す
  void resetToDefaultUrl() => setUrl(_default);

  Future<void> setUrl(String url) async {
    state = url;
    await ref.read(sharedPreferencesProvider).setString(_prefsKey, url);
  }
}
