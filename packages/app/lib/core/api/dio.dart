import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) => Dio(
      BaseOptions(
        baseUrl: 'https://github.api.yumnumm.dev',
        contentType: 'application/json',
      ),
    )..interceptors.add(LogInterceptor());
