import 'package:dio/dio.dart';
import 'package:marketia/core/network/APi_consumer.dart';
import 'package:marketia/core/network/api_interceptros.dart';
import 'package:marketia/core/Errors/execption.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = 'https://supermarket-dan1.onrender.com/api/v1';
    dio.interceptors.add(ApiInterceptros());
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
  }

  @override
  Future delete(
    String path, {
    dynamic? data,
    Map<String, dynamic>? queryParaamters,
    bool isFromData = false,
  }) async {
    // TODO: implement delete

    try {
      final response = await dio.delete(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParaamters,
      );
      return response.data;
    } on DioException catch (e) {
      HandelError(e);
      // TODO
    }
  }

  @override
  Future get(
    String path, {

    Object? data,
    Map<String, dynamic>? queryParaamters,
  }) {
    try {
      final response = dio.get(
        path,
        data: data,
        queryParameters: queryParaamters,
      );
    } on DioException catch (e) {
      HandelError(e);
      // TODO
    }
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future patch(
    String path, {
    dynamic? data,
    Map<String, dynamic>? queryParaamters,
    bool isFromData = false,
  }) async {
    // TODO: implement patch

    try {
      final response = await dio.patch(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParaamters,
      );
      return response.data;
    } on DioException catch (e) {
      HandelError(e);
      // TODO
    }
  }

  @override
  Future post(
    String path, {
    dynamic? data,
    Map<String, dynamic>? queryParaamters,
    bool isFromData = false,
  }) async {
    // TODO: implement post

    try {
      final response = await dio.post(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParaamters,
      );
      return response.data;
    } on DioException catch (e) {
      HandelError(e);
      // TODO
    }
  }
}
