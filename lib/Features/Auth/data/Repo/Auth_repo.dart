import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:marketia/Features/Auth/data/Repo/SigninModel.dart';
import 'package:marketia/Features/Auth/data/Repo/active_code_reset_model.dart';
import 'package:marketia/Features/Auth/data/Repo/resetcodeMode.dart';
import 'package:marketia/Features/Auth/data/Repo/signupModel.dart';
import 'package:marketia/core/Errors/execption.dart';
import 'package:marketia/core/network/APi_consumer.dart';
import 'package:marketia/core/network/cachehelper.dart';
import 'package:marketia/core/network/endpoints.dart';
import 'package:dartz/dartz.dart';

class AuthRepo {
  Signupmodel? signupmodel;
  LoginResponse? loginResponse;
  ApiConsumer api;

  AuthRepo(this.api);
  Future<Either<String, LoginResponse>> signIn({
    required password,
    required email,
  }) async {
    try {
      final response = await api.post(
        Endpoints.signIn,
        data: {ApiKeys.email: email, ApiKeys.password: password},
        isFromData: false,
      );
      final loginResponse = LoginResponse.fromJson(response);
      // final Decoder = JwtDecoder.decode(loginResponse!.token);
      CacheHelper().saveData(key: ApiKeys.token, value: loginResponse!.token);
      // CacheHelper().saveData(key: ApiKeys.id, value: [ApiKeys.id]);
      return Right(loginResponse);
    } on Execption1 catch (e) {
      return left(e.errorModel.errMessage);
    }
  }

  Future<Either<String, Signupmodel>> signUp({
    required email,
    required phone,
    required password,
    required name,
    required confrimPassword,
  }) async {
    try {
      final response = await api.post(
        Endpoints.signup,
        data: {
          ApiKeys.name: name,
          ApiKeys.email: email,
          ApiKeys.Phone: phone,
          ApiKeys.password: password,
          ApiKeys.confrimPawword: confrimPassword,
        },
      );
      final signup = Signupmodel.fromJson(response);
      return Right(signup);
    } on Execption1 catch (e) {
      // TODO
      return left(e.errorModel.errMessage);
    }
  }

  Future<Either<String, Signupmodel>> resetCode({required email}) async {
    try {
      final response = await api.post(
        Endpoints.resetCode,
        isFromData: false,
        data: {ApiKeys.email: email},
      );
      final reset = Signupmodel.fromJson(response);
      return Right(reset);
    } on Execption1 catch (e) {
      return left(e.errorModel.errMessage);
    }
  }

  Future<Either<String, Signupmodel>> enterCode({
    required email,
    required code,
  }) async {
    try {
      final response = await api.post(
        Endpoints.activeCode,
        data: {ApiKeys.email: email, ApiKeys.code: code},
      );
      final getCode = Signupmodel.fromJson(response);
      return Right(getCode);
    } on Execption1 catch (e) {
      return left(e.errorModel.errMessage);
    }
  }

  Future<Either<String, Signupmodel>> changePass({
    required email,
    required password,
    required confrimpass,
  }) async {
    try {
      final response = await api.post(
        Endpoints.changePass,
        data: {
          ApiKeys.email: email,
          ApiKeys.password: password,
          ApiKeys.confrimPawword: confrimpass,
        },
      );
      final changepass = Signupmodel.fromJson(response);
      return Right(changepass);
    } on Execption1 catch (e) {
      return left(e.errorModel.errMessage);
    }
  }
}
