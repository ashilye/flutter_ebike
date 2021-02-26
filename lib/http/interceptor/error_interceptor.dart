import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ebike/http/index.dart';

class ErrorInterceptor extends Interceptor{


  @override
  Future onError(DioError err) {
    // error统一处理
    AppException appException = AppException.create(err);
    // 错误提示
    debugPrint('DioError===: ${appException.toString()}');
    err.error = appException;
    return super.onError(err);
  }
}