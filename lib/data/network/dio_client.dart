import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:modflutterapp/data/network/exceptions.dart';

import '../../res/app_url.dart';
import '../../res/widgets/show_app_dialog.dart';

class DioClient {
  static BaseOptions options = BaseOptions(
    // baseUrl: AppUrl.getotp,
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
    connectTimeout: AppUrl.connectionTimeout,
    receiveTimeout: AppUrl.receiveTimeout,
  );

  // final Dio _dio = Dio(options);

  final Dio _dio = Dio();

  // get

  Future<dynamic> get(
    String uri,
    BuildContext context, [
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  ]) async {
    try {
      final response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on DioError catch (e) {
      final errorMsg = DioExceptions.fromDioError(e);
      showAppDialog(context, 'Error', errorMsg.message.toString());
    }
  }

  // post

  Future<dynamic> post(
    String uri,
    BuildContext context,
    Map<String, dynamic> queryParameters, [
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  ]) async {
    try {
      final response = await _dio.post(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      log(response.data.toString());
      return response.data;
    } on DioError catch (e) {
      final errorMsg = DioExceptions.fromDioError(e);
      showAppDialog(context, 'Error', errorMsg.message.toString());
    }
  }
}
