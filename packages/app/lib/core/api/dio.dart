import 'package:dio/dio.dart';
import 'package:github_repository_search/core/api/bff_api_base_url.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) => Dio(
      BaseOptions(
        baseUrl: '${ref.watch(bffApiBaseUrlProvider)}/api/v1',
        contentType: 'application/json',
        connectTimeout: const Duration(milliseconds: 5000),
        receiveTimeout: const Duration(milliseconds: 5000),
        sendTimeout: const Duration(milliseconds: 5000),
      ),
    )..interceptors.add(LogInterceptor());
