import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_repository_search/core/api/bff_api_base_url.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BffEndpointChoicePage extends HookConsumerWidget {
  const BffEndpointChoicePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedEndpoint = ref.watch(bffApiBaseUrlProvider);

    final items = <({
      String title,
      String url,
    })>[
      (title: 'Default', url: 'https://github.api.yumnumm.dev'),
      (
        title: 'OrbStack',
        url: 'http://bff.dart-frog-github-repository-search.orb.local/'
      ),
    ];
    if (items.firstWhereOrNull((e) => e.url == selectedEndpoint) == null) {
      items.add(
        (
          title: 'Custom',
          url: selectedEndpoint,
        ),
      );
    } else {
      items.add(
        (
          title: 'Custom',
          url: 'http://',
        ),
      );
    }

    Future<void> onUnacceptableUrlEntered() async => showAdaptiveDialog<void>(
          context: context,
          builder: (context) => AlertDialog.adaptive(
            title: const Text('Invalid URL'),
            content: const Text(
              'Please enter a valid URL',
            ),
            actions: [
              _AdaptiveAction(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );

    Future<void> onCustomUrlInput(String? initialValue) async =>
        showAdaptiveDialog<void>(
          context: context,
          builder: (context) {
            final controller = TextEditingController(text: initialValue);
            return AlertDialog.adaptive(
              title: const Text('Custom BFF Endpoint'),
              content: Material(
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Enter custom BFF endpoint',
                  ),
                ),
              ),
              actions: [
                _AdaptiveAction(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                _AdaptiveAction(
                  onPressed: () {
                    final url = Uri.tryParse(controller.text);
                    if (url?.isAbsolute ?? false) {
                      // 正しい場合はURLを保存してダイアログを閉じる
                      ref.read(bffApiBaseUrlProvider.notifier).setUrl(
                            controller.text,
                          );
                      Navigator.pop(context);
                    } else {
                      // 不正なURLの場合はエラーダイアログを表示
                      onUnacceptableUrlEntered();
                      return;
                    }
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );

    Future<void> notImplementedUrlDialog() async => showAdaptiveDialog<void>(
          context: context,
          builder: (context) {
            return AlertDialog.adaptive(
              title: const Text('Not implemented'),
              content: const Text(
                'This feature is not implemented yet',
              ),
              actions: [
                _AdaptiveAction(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );

    Future<void> onRadioListTileTap({
      required ({String title, String url}) item,
      required String? initialValue,
    }) async {
      if (item.title == 'Custom') {
        return onCustomUrlInput(item.url);
      }
      // URLが空の場合は エラーダイアログを表示する
      if (item.url == '') {
        return notImplementedUrlDialog();
      }
      await ref.read(bffApiBaseUrlProvider.notifier).setUrl(item.url);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('BFFエンドポイント切り替え'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return RadioListTile(
            value: item.url,
            groupValue: selectedEndpoint,
            onChanged: (value) => onRadioListTileTap(
              item: item,
              initialValue: value,
            ),
            title: Text(item.title),
            subtitle: Text(item.url),
          );
        },
      ),
    );
  }
}

// [showAdaptiveDialog<T>] と [AlertDialog.adaptive] を参考に作成
// ref: https://api.flutter.dev/flutter/material/AlertDialog/AlertDialog.adaptive.html
class _AdaptiveAction extends StatelessWidget {
  const _AdaptiveAction({
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return switch (theme.platform) {
      TargetPlatform.iOS || TargetPlatform.macOS => CupertinoDialogAction(
          onPressed: onPressed,
          child: child,
        ),
      _ => TextButton(
          onPressed: onPressed,
          child: child,
        ),
    };
  }
}
