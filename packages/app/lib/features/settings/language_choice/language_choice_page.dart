import 'package:flutter/material.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'language_choice_page.viewmodel.dart';

class LanguageChoicePage extends HookConsumerWidget {
  const LanguageChoicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLanguage = ref.watch(languageProvider);
    final locales = AppLocaleUtils.supportedLocalesRaw;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.settings.languageSetting),
      ),
      body: Column(
        children: [
          // テーマ設定
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: locales.length,
            itemBuilder: (context, index) {
              final lang = locales[index];
              return RadioListTile<String>(
                title: Text(t.locales[lang]!),
                value: lang,
                selected: lang == currentLanguage.languageCode.toLowerCase(),
                groupValue: currentLanguage.languageCode.toLowerCase(),
                onChanged: (_) =>
                    ref.read(languageProvider.notifier).setLanguage(lang),
              );
            },
          ),
        ],
      ),
    );
  }
}
