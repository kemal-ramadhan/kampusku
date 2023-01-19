import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:crud_mysql/function/func_isLoading.dart';
import 'package:crud_mysql/function/func_handleNull.dart';

editData(context, id, nik, email, nama) async {
  //loading lalu pushnamed ke fungsi read
  isLoading(context);

  FormData sendData = FormData.fromMap({
    "id": id.toString(),
    "nik": nik.toString(),
    "email": email.toString(),
    "nama": nama.toString(),
  });
  {
    final response = await Dio().post(
        "http://tifrp20a.my.id/5/berita/admin/editAdmin.php",
        data: sendData);
    log("test send data:" + nik.toString());
  }
  return Navigator.of(context)
      .pushNamedAndRemoveUntil('/read', (Route<dynamic> route) => false);
}
