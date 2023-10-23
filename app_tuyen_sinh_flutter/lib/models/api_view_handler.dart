import 'dart:async';

import 'package:app_tuyen_sinh_flutter/utils/functions/catch_handler.dart';
import 'package:app_tuyen_sinh_flutter/utils/status_code.dart';
import 'package:dio/dio.dart';

import 'base_error.dart';

class ApiViewHandler<T> {
  final T? responseData;
  final dynamic code;
  final List<BaseError>? errors;
  final String? message;

  ApiViewHandler({
    this.responseData,
    this.code,
    this.message,
    this.errors,
  });

  static Future<ApiViewHandler<T>> fromResponse<T>(
    Response response, [
    FutureOr<T?> Function(Map responseData)? handler,
  ]) async {
    try {
      var data = response.data;
      if (response.statusCode == 200) {
        return ApiViewHandler(
          responseData: data['code'] == 200
              ? await handler?.call(data['data'] ?? {})
              : null,
          code: data['code'],
          message: data['message']?.toString(),
          errors: data['errors'] == null
              ? null
              : List<BaseError>.from(
                  data['errors'].map(
                    (e) => BaseError.fromJson(e),
                  ),
                ),
        );
      }

      var error = BaseError(
        code: response.statusCode,
        message: response.statusMessage,
      );

      return ApiViewHandler(
        code: response.statusCode,
        errors: [error],
        message: error.message,
      );
    } catch (e, s) {
      return catchHandler<ApiViewHandler<T>>(
        e,
        s,
        ApiViewHandler(
          code: StatusCode.errorUnknownCode,
          message: 'Đã có lỗi xảy ra, vui lòng thử lại sau',
        ),
      )!;
    }
  }
}
