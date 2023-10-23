// import 'dart:_http';
import 'dart:collection';
import 'dart:io';

import 'package:app_tuyen_sinh_flutter/models/api_view_handler.dart';
import 'package:app_tuyen_sinh_flutter/models/responses/home_response.dart';
import 'package:app_tuyen_sinh_flutter/models/responses/input_forgot_password_reponse.dart';
import 'package:app_tuyen_sinh_flutter/models/responses/login_response.dart';
import 'package:app_tuyen_sinh_flutter/services/data_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/auth_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/otp_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/recieve_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/catch_handler.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/interceptor_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/path_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/share_pref_manager.dart';
import 'package:dio/dio.dart';

// const _exceptionCanResolveByReFecth = [
//   'HttpException: Connection closed before full header was received',
//   'HandshakeException: Connection terminated during handshake',
//   'Connecting timed out',
//   'Receiving data timeout',
//   'OS Error: Network is unreachable',
//   'SocketException: Connection',
//   'HttpException: Connection reset by peer',
//   'HttpException: Connection closed while receiving data',
// ];

const String _baseUrl = 'http://10.90.123.53:9090/';

final _baseOptions = BaseOptions(
  connectTimeout: const Duration(seconds: 5), //5000
  receiveTimeout: const Duration(seconds: 5), //3000
  sendTimeout: const Duration(seconds: 5), //3000
  responseType: ResponseType.json,
);

class ApiService {
  late final Dio _dio;

  // final Logger _log = Logger();

  static final ApiService _instance = ApiService._();

  static ApiService get instance => _instance;

  ApiService._()
      : _dio = Dio(_baseOptions)
          ..interceptors.addAll([
            // ResponseInterceptor()Log,
            // // if (kReleaseMode) LogInterceptor(),
            DebugLogInterceptor(),
            // // TokenInterceptor(),
          ]);

  Future<Response> request(
    String url, {
    Map<String, dynamic>? bodyParams,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    Options? options,
    String? accessToken,
    String method = 'POST',
    bool isFormData = false,
    String baseUrl = _baseUrl,
  }) async {
    headers ??= HashMap();

    String? token = accessToken;

    if (token == null) {
      var savedToken = SharePrefManager.instance.getAccessToken;
      if (savedToken != null) token = 'Bearer $savedToken';
    }

    options = Options(
      method: method,
    );

    if (token != null) {
      headers.putIfAbsent('Authorization', () => token);
    }

    options.headers = headers;
    options.contentType ??= ContentType(
      'application',
      'json',
      charset: "utf-8",
    ).mimeType;

    Response response;

    final bool useFormData = isFormData;

    try {
      response = await _dio.request(
        baseUrl + url,
        data: useFormData ? FormData.fromMap(bodyParams ?? {}) : bodyParams,
        queryParameters: queryParams,
        options: options,
      );
    } on DioError catch (e, s) {
      return catchHandler(
        e,
        s,
        Response(
          requestOptions: e.requestOptions,
          statusCode: e.response?.statusCode,
          statusMessage: e.message,
        ),
      )!;
    }
    return response;
  }

  Future<ApiViewHandler<LoginResponseData>> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    var res = await request(
      PathManager.login,
      bodyParams: {
        'email': email,
        'password': password,
      },
    );

    return ApiViewHandler.fromResponse(
      res,
      LoginResponseData.fromJson,
    );
  }

  Future<ApiViewHandler<HomeResponse>> getHomeData() async {
    await Future.delayed(const Duration(seconds: 2));
    var res = Response(
      requestOptions: RequestOptions(),
      data: homeData,
      statusCode: 200,
    );

    return ApiViewHandler.fromResponse(
      res,
      HomeResponse.fromJson,
    );
  }

  Future<ApiViewHandler<InputForgotPasswordResponse>>
      inputForgotPasswordEmailOrPhone(
    RecieveType recieveType, {
    String? email,
    String? phone,
  }) async {
    var res = await request(
      PathManager.inputForgotPassword,
      bodyParams: {
        'recieve_type': recieveType.id,
        if (email != null) 'email': email,
        if (phone != null) 'phone': phone,
      },
    );

    return ApiViewHandler.fromResponse(
      res,
      InputForgotPasswordResponse.fromJson,
    );
  }

  Future<ApiViewHandler> sendOtp(
    OtpType otpType, {
    int? authId,
  }) async {
    var res = await request(
      PathManager.sendOtp,
      bodyParams: {
        'otp_type': otpType.id,
        if (authId != null) 'auth_id': authId,
      },
    );

    return ApiViewHandler.fromResponse(
      res,
      (_) => null,
    );
  }

  Future<ApiViewHandler> confirmOtp(
    OtpType otpType, {
    int? authId,
    required String otp,
  }) async {
    var res = await request(
      PathManager.confirmOtp,
      bodyParams: {
        'otp_type': otpType.id,
        'otp': otp,
        if (authId != null) 'auth_id': authId,
      },
    );

    return ApiViewHandler.fromResponse(
      res,
      (_) => null,
    );
  }

  Future<ApiViewHandler> updatePassword(
    String newPassword, {
    String? oldPassword,
    int? authId,
    String? otp,
  }) async {
    var res = await request(
      PathManager.updatePassword,
      bodyParams: {
        'new_password': newPassword,
        if (oldPassword != null) 'password': oldPassword,
        if (authId != null) 'auth_id': authId,
        if (otp != null) 'otp': otp,
      },
    );

    return ApiViewHandler.fromResponse(
      res,
      (_) => null,
    );
  }

  Future<ApiViewHandler<AuthInfo>> register({
    AuthType authType = AuthType.email,
    String? email,
    String? password,
  }) async {
    var res = await request(
      PathManager.register,
      bodyParams: {
        'auth_type': authType.id,
        if (email != null) 'email': email,
        if (password != null) 'password': password,
      },
    );

    return ApiViewHandler.fromResponse(res, AuthInfo.fromJson);
  }

  Future<ApiViewHandler<User>> updateUserInfo(
    User newInfo, {
    int? authId,
  }) async {
    var res = await request(PathManager.updateUserInfo, bodyParams: {
      'user_info': newInfo.toJsonApiBody(),
      if (authId != null) 'auth_id': authId,
    });

    return ApiViewHandler.fromResponse(res, User.fromJson);
  }

  Future<ApiViewHandler> logout() async {
    var res = await request(PathManager.logout);
    return ApiViewHandler.fromResponse(res);
  }

  Future<ApiViewHandler> registerOneSignalDevice(
    String oneSignalId,
    String deviceUid, {
    required String token,
  }) async {
    var res = await request(
      PathManager.registerOneSignalDevice,
      bodyParams: {
        'one_signal_id': oneSignalId,
        'device_uid': deviceUid,
      },
    );
    return ApiViewHandler.fromResponse(res);
  }
}
