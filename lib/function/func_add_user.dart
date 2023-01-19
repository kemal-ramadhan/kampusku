import 'package:crud_mysql/function/func_handleNull.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'func_isLoading.dart';

addData(context, npm, email, nama, password) async {
  //handle data kosong
  if (npm == null || email == null || nama == null || password == null) {
    handle("Semua data harus diisi!");
  } else {
    //jika data tidak kosong, loading lalu pushnamed ke fungsi read
    isLoading(context);
    FormData sendData = FormData.fromMap({
      "npm": npm.toString(),
      "email": email.toString(),
      "nama": nama.toString(),
      "password": password.toString(),
    });
    final response = await Dio().post(
      "https://tifrp20a.my.id/5/berita/user/add_user.php",
      data: sendData
    );
    log("test send data: " + npm.toString());

    return Navigator.of(context)
        .pushNamedAndRemoveUntil('/read', (Route<dynamic> route) => false);
  }
}
