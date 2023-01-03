import 'dart:developer';

import 'package:flutter/material.dart';

import '../data/network/dio_client.dart';

class AuthRepo {
  final DioClient _apiService = DioClient();

  Future<Map<dynamic, dynamic>?> getOtprepo(
    String uri,
    BuildContext context,
    dynamic data,
  ) async {
    try {
      var response = await _apiService.post(uri, context,data);
      return response;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<Map<dynamic, dynamic>?> signinrepo(
    String uri,
    BuildContext context,
    dynamic queryParameters,
  ) async {
    try {
      var response = await _apiService.post(uri, context, queryParameters);
      return response;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
