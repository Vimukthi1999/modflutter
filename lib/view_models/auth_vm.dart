import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:modflutterapp/respository/auth_repo.dart';

import '../res/app_url.dart';

class AuthVM extends ChangeNotifier{
  
  final _authRepo = AuthRepo();

  Future<void> getOtpvm(BuildContext context,dynamic data) async{
    _authRepo.getOtprepo(AppUrl.getotp, context,data).then((value){
      log(value.toString());
    }).onError((error, stackTrace){
      log(error.toString());
    });
  }

  Future<void> signInvm(BuildContext context,dynamic data) async{
    _authRepo.signinrepo(AppUrl.login,context,data).then((value){
      log(value.toString());
    }).onError((error, stackTrace){
      log(error.toString());
    });
  }
}