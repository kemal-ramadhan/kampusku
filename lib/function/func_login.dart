import 'package:crud_mysql/function/func_isLoading.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'func_isLoading.dart';
import 'func_handleNull.dart';

Response<dynamic>? response;

Future<dynamic> login(context, nik_admin, password_admin) async {
  String nik, password;
  nik = nik_admin.toString();
  password = password_admin.toString();

  //jika nikname dan password kosong jalankan fungsi handle pada file handleNull.
  if (nik == "" || password == "") {
    log("If pertama");
    handle("Semua data harus diisi!");
  } else {
    //tampil loading jika nikname dan password tidak kosong
    isLoading(context);
    response = await Dio()
        .get("https://tifrp20a.my.id/5/berita/login.php", queryParameters: {
      "nik": nik_admin.toString(),
      "password": password_admin.toString(),
    });
    List data = response!.data;
    log("Cek Sebelum id $data");

    if (data!.isEmpty) {
      log("If ketiga");
      Navigator.pop(context);
      handle("nik atau password salah!");
    } else {
      log("If kedua");
      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.setString("nik", nik_admin);
    
    //  String? dd = pref.getString("nik");
    //   log(dd!);

      return Navigator.of(context)
          .pushNamedAndRemoveUntil('/menu', (Route<dynamic> route) => false);
    }
  }
}
