import 'package:dio/dio.dart';
import 'package:marketia/core/Errors/ErrorModel.dart';

class Execption1 implements Exception {
  final ErrorModel errorModel;

  Execption1({required this.errorModel});
}

void HandelError(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      // TODO: Handle this case.

      throw Execption1(
        errorModel: ErrorModel.fromJson(e.message as Map<String, dynamic>),
      );

    // TODO: Handle this case.

    case DioExceptionType.receiveTimeout:
      // TODO: Handle this case.
      throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      // TODO: Handle this case.
      throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      // TODO: Handle this case.
      throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      // TODO: Handle this case.
      throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.unknown:
      // TODO: Handle this case.
      throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.sendTimeout:
      throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400:
          throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
        case 401:
          throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
        case 403:
          throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
        case 404:
          throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
        case 409:
          throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
        case 422:
          throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
        case 504:
          throw Execption1(errorModel: ErrorModel.fromJson(e.response!.data));
      }
  }
}
