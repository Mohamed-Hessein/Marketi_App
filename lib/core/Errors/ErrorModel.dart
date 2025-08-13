import 'package:marketia/core/network/endpoints.dart';

class ErrorModel {
  final dynamic status;
  final String errMessage;

  ErrorModel({required this.status, required this.errMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      status: jsonData[ApiKeys.status] ?? '',
      errMessage: jsonData[ApiKeys.ErrorMessage],
    );
  }
}
