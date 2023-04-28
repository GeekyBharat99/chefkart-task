import 'package:dio/dio.dart';
// import 'package:dio_http_cache_lts/dio_http_cache_lts.dart';
import 'package:flutter/foundation.dart';

class ApiClient {
  static final ApiClient _singleton = ApiClient._internal();

  late Dio _dio;

  factory ApiClient() {
    return _singleton;
  }

  ApiClient._internal() {
    _dio = Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
        },
        baseUrl: 'https://8b648f3c-b624-4ceb-9e7b-8028b7df0ad0.mock.pstmn.io',
      ),
    );

    // _dio.interceptors.add(
    //   DioCacheManager(
    //     CacheConfig(
    //         baseUrl:
    //             "https://8b648f3c-b624-4ceb-9e7b-8028b7df0ad0.mock.pstmn.io"),
    //   ).interceptor,
    // );

    // if build mode is not kReleaseMode then log all the details network request
    if (!kReleaseMode) {
      _dio.interceptors.add(LogInterceptor(
        requestHeader: true,
        error: true,
        responseHeader: true,
        request: true,
        requestBody: true,
        responseBody: true,
      ));
    }
  }

  Future<T> get<T>(
    String pathOrUrl, {
    required Map<String, String> headers,
    Map<String, dynamic>? queryParameters,
    required T Function(dynamic data) parser,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        pathOrUrl,
        queryParameters: queryParameters,
        // options: buildCacheOptions(
        //   const Duration(hours: 2),
        //   maxStale: const Duration(days: 3),
        //   // forceRefresh: ,
        //   options: Options(headers: headers),
        // ),
        options: Options(headers: headers),
      );

      return parser.call(response.data) ?? response.data;
    } on DioError catch (err) {
      rethrow;
    } catch (error) {
      debugPrint(' final error $error');
      rethrow;
    }
  }
}
