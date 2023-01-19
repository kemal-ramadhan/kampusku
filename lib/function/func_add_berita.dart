import 'package:crud_mysql/function/func_handleNull.dart';
import 'package:crud_mysql/pages/buat_grup.dart';
import 'package:crud_mysql/pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:crud_mysql/function/func_isLoading.dart';
import 'package:shared_preferences/shared_preferences.dart';

addData(context, id_admin, judul, isi_berita, kategori, pathImg) async {
  //handle data kosong
  if (      judul == null ||
      isi_berita == null ||
      kategori == null ||
      pathImg == null ) {
    handle("Semua data harus diisi!");
  } else {
    //jika data tidak kosong, loading lalu pushnamed ke fungsi read
    // isLoading(context);
    handle("Data Berhasil di Simpan!");
     SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.getString("nik");
    
     String? dd = pref.getString("nik");

    String imgName = pathImg.path.split('/').last;
    FormData sendData = FormData.fromMap({
      "id_user": 0,
      "id_admin": dd,
      "judul": judul.toString(),
      "isi_berita": isi_berita.toString(),
      "kategori": kategori.toString(),
      "waktu_dibuat": "current_timestamp()",
      "status": "aktif",
      "url_image": await MultipartFile.fromFile(pathImg.path,filename: imgName.toString())
    });
    final response = await Dio().post(
        "http://tifrp20a.my.id/5/berita/berita_isi/addBerita.php",
        data: sendData);

        log("test send data: " + judul.toString());

    return  Navigator.of(context, rootNavigator: true).pushNamed("/menu");
    
  }
}
