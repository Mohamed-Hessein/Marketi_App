import 'package:marketia/core/network/endpoints.dart';

class Signupmodel {
  final String message;

  Signupmodel({required this.message});
  factory Signupmodel.fromJson(Map<String, dynamic> json) {
    return Signupmodel(message: json[ApiKeys.message]);
  }
}
