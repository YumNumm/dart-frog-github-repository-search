import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:github_repository_search/core/provider/setting/theme_provider.dart';
import 'package:github_repository_search/core/router/router.dart';
import 'package:github_repository_search/features/settings/component/setting/custom_switch.dart';
import 'package:github_repository_search/features/settings/component/setting/setting_section.dart';
import 'package:github_repository_search/features/settings/theme_choice/theme_choice_page.dart';
import 'package:go_router/go_router.dart';

import 'settings_view.viewmodel.dart';

class SettingView extends ConsumerWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const descriptionTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );
    const titleTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );

    final currentTheme = ref.watch(themeProvider);
    final isMaterialYouSupported =
        ref.watch(isMaterialYouSupportedFutureProvider);

    final viewModel = SettingViewModel();

    return Scaffold(
      appBar: AppBar(
        title: Text(t.settings.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SettingsSection(
              title: t.settings.themeModeSetting,
              children: [
                // テーマ切り替え
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  title: Text(
                    t.settings.themeModeSetting,
                    style: titleTextStyle,
                  ),
                  subtitle: Text(
                    currentTheme.themeMode.i18nName,
                    style: descriptionTextStyle,
                  ),
                  onTap: () => const ThemeChoiceRoute().push<void>(context),
                ),
                // Material Youの切り替え
                isMaterialYouSupported.when<Widget>(
                  loading: () => const SizedBox.shrink(),
                  error: (_, __) => const SizedBox.shrink(),
                  data: (isMaterialYouSupported) {
                    if (isMaterialYouSupported) {
                      return ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        title: Text(
                          t.settings.useDynamicColorTheme,
                          style: titleTextStyle,
                        ),
                        onTap: () => viewModel.onMaterialYouButtonTap(ref),
                        trailing: CustomSwitch(
                          onChanged: (_) =>
                              viewModel.onMaterialYouButtonTap(ref),
                          value: currentTheme.useDynamicColor,
                        ),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: Text(
                    t.settings.languageSetting,
                    style: titleTextStyle,
                  ),
                  subtitle:
                      ref.watch(currentLanguageStreamProvider).when<Widget>(
                            loading: () => const SizedBox.shrink(),
                            error: (_, __) => const SizedBox.shrink(),
                            data: (locale) => Text(
                              t.locales[locale.languageCode]!,
                              style: descriptionTextStyle,
                            ),
                          ),
                  onTap: () => const LanguageChoiceRoute().push<void>(context),
                ),
              ],
            ),
            SettingsSection(
              title: 'BFF Endpoint',
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: const Text('BFF Endpoint Selector'),
                  onTap: () =>
                      context.push(const BffEndpointChoiceRoute().location),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
