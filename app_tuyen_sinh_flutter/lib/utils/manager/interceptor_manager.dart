import 'dart:convert';
import 'dart:developer' as dev;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DebugLogInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);

    var data = options.data;
    var body = data;

    // if (kDebugMode) {
    if (data is FormData) {
      body = <String, dynamic>{};
      // dev.appLog(data.fields);
      for (var e in data.fields) {
        (body as Map<String, dynamic>).putIfAbsent(e.key, () => e.value);
      }
    }

    var logString =
        "URL: ${options.path} \nMethod: ${options.method} \nheader: ${options.headers} \nparams: ${options.queryParameters}\nbody/query: $body";
    _log(logString);
    // }

    // try {
    //   var map = {
    //     "header": {...options.headers},
    //   };

    //   if (options.method == "POST") map["data"] = options.data;
    // } catch (e) {
    //   // _log(e);
    // }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    _log('Response: ${response.requestOptions.path}');
    // if (kDebugMode) {
    var string = response.toString();
    try {
      string = json.encode(json.decode(string));
      _log(string);
      // }
    } catch (_) {}
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      _log(
        'ERROR_RESPONSE ON: ${err.requestOptions.path}',
        error: err.response?.statusCode,
      );
    }
    super.onError(err, handler);
  }

  _log(String text, {String name = '', Object? error}) {
    if (kDebugMode) {
      dev.log(
        text,
        name: name,
        error: error,
      );
    } else {
      debugPrint(
        '$text ${error != null ? 'Error: $error' : ''}',
        wrapWidth: 10000,
      );
    }
  }
}
