import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:crud_mysql/function/func_isLoading.dart';
import 'package:crud_mysql/function/func_handleNull.dart';

editData(context, id_berita, judul, isi_berita, kategori, pathImg, kategori_lama) async {
  //loading lalu pushnamed ke fungsi read
  isLoading(context);
String?imgName;
var dataImg;
if (pathImg !=null) {
  imgName = pathImg.path.split('/').last;
  dataImg = await MultipartFile.fromFile(pathImg.path,
  filename: imgName.toString());
}
  FormData sendData = FormData.fromMap({
    "id_berita": id_berita.toString(),
    "judul": judul.toString(),
    "isi_berita": isi_berita.toString(),
    "kategori": kategori.toString(),
    "kategori_lama": kategori_lama.toString(),
    "url_image": dataImg,
  });
  {
    final response = await Dio().post(
        "http://tifrp20a.my.id/5/berita/berita_isi/editBerita.php?",
        data: sendData);
    log("test send data:" + judul.toString());
  }
  return  Navigator.of(context, rootNavigator: true).pushNamed("/menu");

}
