import 'dart:convert';
import 'package:Assignment_Flutter/network/app_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'api_constants.dart';

class ApiBaseHelper {
  Dio _dio;

  ApiBaseHelper() {
    ///Create Dio Object using baseOptions set receiveTimeout,connectTimeout
    BaseOptions options =
        BaseOptions(receiveTimeout: 150000, connectTimeout: 150000);

    options.baseUrl = ApiConstants.baseUrl;
    options.contentType = ApiConstants.contentType;
    _dio = Dio(options);
    _dio.interceptors.add(AppInterceptor());
    _dio.interceptors.add(
        DioCacheManager(CacheConfig(baseUrl: ApiConstants.baseUrl))
            .interceptor);
  }

  ///used for calling Get Request
  Future<Response> get(String url) async {

    Response response = await _dio.get(url,
        options: buildCacheOptions(Duration(days: 7), forceRefresh: true));
    return response;
  }

  ///used for calling Get Request
  Future<Response> getWithValue(
      String url, String value, Map<String, bool> params) async {
    String urlString = url + value;
    Response response = await _dio.get(urlString,
        queryParameters: params,
        options: buildCacheOptions(Duration(days: 7), forceRefresh: true));
    return response;
  }

  ///used for calling post Request
  Future<Response> post(String url, Map<String, String> params) async {
    Response response = await _dio.post(url,
        data: params, options: Options(responseType: ResponseType.json));
    return response;
  }

  ///used for calling post Request
  Future<Response> postList(String url, Map<String, dynamic> params) async {
    Response response = await _dio.post(url,
        data: jsonEncode(params),
        options: buildCacheOptions(Duration(days: 7), forceRefresh: true));
    return response;
  }

  ///used for calling post Request
  Future<Response> postWithValue(
      String url, String value, Map<String, bool> params) async {
    String urlString = value + url;
    Response response = await _dio.post(urlString,
        data: params,
        options: buildCacheOptions(Duration(days: 7), forceRefresh: true));
    return response;
  }
}
