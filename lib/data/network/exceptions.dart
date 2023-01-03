import 'dart:developer';

import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  String message = 'init';

  DioExceptions.fromDioError(DioError dioError) {
    log(dioError.type.toString());
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = 'Request to API server was cancelled';
        break;

      case DioErrorType.connectTimeout:
        message = 'Connection timeout with API server';
        break;

      case DioErrorType.other:
        message = 'Not Internet';
        break;

      case DioErrorType.receiveTimeout:
        message = 'Recevice timeout in Connection timeout with API server';
        break;

      case DioErrorType.response:
        message = _handleError(
            dioError.response!.statusCode!, dioError.response!.data);
        break;

      case DioErrorType.sendTimeout:
        message = 'Send timeout in Connection timeout with API server';
        break;

      default:
        message = 'Something Went Wrong';
        break;
    }
  }

  String _handleError(int statusCode, dynamic error) {

    log(statusCode.toString());
    switch (statusCode) {

      
      case 400:
        return 'Bad Request';
      case 401:
        return 'Authorization Required';
      case 402:
        return 'Payment Required';

      case 403:
        return 'Forbidden';

      case 404:
        return 'Not Found';

      case 405:
        return 'Method Not Allowed';

      case 406:
        return 'Not Acceptable';

      case 407:
        return 'Proxy Authentication Required';

      case 408:
        return 'Request TimeOut';

      case 409:
        return 'Conflict';

      case 410:
        return 'Gone';

      case 412:
        return 'Precondition Failed';

      case 413:
        return 'Request Entity Too Long';

      case 414:
        return 'Request URI too Long';

      case 500:
        return 'Internal server error';

      default:
        return 'Oops something went wrong';
    }
  }
}
