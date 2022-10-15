import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enginner_codecheck/ui/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PlatformDispatcher.instance.onError = (error, stackTrace) {
    Logger().e(error, stackTrace);
    return true;
  };
  runApp(
    const ProviderScope(
      observers: [],
      child: App(),
    ),
  );
}

Future<void> onFlutterError(FlutterErrorDetails details) async => Logger().wtf(
      'Error: ${details.exception}',
      details.exception,
    );
