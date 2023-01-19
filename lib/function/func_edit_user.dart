import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'func_isLoading.dart';

editData(context,id_user, npm, email, nama) async {
  //loading lalu pushnamed ke fungsi read
  isLoading(context);
  

    FormData sendData = FormData.fromMap({
      "id_user": id_user.toString(),
      "npm": npm.toString(),
      "email": email.toString(),
      "nama": nama.toString(),
    });
    final response = await Dio().post(
      "https://tifrp20a.my.id/5/berita/user/edit_user.php", data: sendData
    );
    
    log("test send data :" + npm.toString());
  
  return Navigator.of(context)
      .pushNamedAndRemoveUntil('/read', (Route<dynamic> route) => false);
}