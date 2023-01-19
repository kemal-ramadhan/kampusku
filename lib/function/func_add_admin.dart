import 'package:crud_mysql/function/func_handleNull.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:crud_mysql/function/func_isLoading.dart';

addData(context, nik, email, nama, paswword) async {
  //handle data kosong
  if (nik == null || email == null || nama == null || paswword == null) {
    handle("Semua data harus diisi!");
  } else {
    //jika data tidak kosong, loading lalu pushnamed ke fungsi read
    isLoading(context);
    FormData sendData = FormData.fromMap({
      "nik": nik.toString(),
      "email": email.toString(),
      "nama": nama.toString(),
      "password": paswword.toString(),
    });
    final response = await Dio().post(
        "http://tifrp20a.my.id/5/berita/admin/addAdmin.php",
        data: sendData);
    return Navigator.of(context)
        .pushNamedAndRemoveUntil('/read', (Route<dynamic> route) => false);
  }
}
