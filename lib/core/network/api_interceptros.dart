import 'package:dio/dio.dart';
import 'package:marketia/core/network/cachehelper.dart';
import 'package:marketia/core/network/endpoints.dart';

class ApiInterceptros extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest
    options.headers[ApiKeys.token] =
        CacheHelper().getData(key: ApiKeys.token) != null
        ? "  ${CacheHelper().getData(key: ApiKeys.token)}"
        : null;
    super.onRequest(options, handler);
  }
}
