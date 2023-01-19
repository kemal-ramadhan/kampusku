import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class ListCloud {
  String id_berita,
      id_user,
      id_admin,
      judul,
      isi_berita,
      kategori,
      waktu_dibuat,
      status,
      img;
  ListCloud({
    required this.id_berita,
    required this.id_user,
    required this.id_admin,
    required this.judul,
    required this.isi_berita,
    required this.kategori,
    required this.waktu_dibuat,
    required this.status,
    required this.img,
  });
}

Future<List<ListCloud>> read(query) async {
  List<ListCloud> dataList = <ListCloud>[];
  ListCloud tmpData;
  final response = await Dio().get(
      "http://tifrp20a.my.id/5/berita/berita_isi/listBerita.php",
      queryParameters: {
        "key": query.toString(),
      });
  // log("test query: $query");
  // log("test read data: ${response.data[0]}");

  var data = response.data;
  log("test decode: $data[0]}");

  if (data.length == 0) {
    return dataList;
  } else {
    List<ListCloud> tdata = [];
    data.forEach((item) {
      tmpData = ListCloud(
        id_berita: item["id_berita"]!,
        id_user: item["id_user"]!,
        id_admin: item["id_admin"]!,
        judul: item["judul"]!,
        isi_berita: item["isi_berita"]!,
        kategori: item["kategori"]!,
        waktu_dibuat: item["waktu_dibuat"]!,
        status: item["status"]!,
        img: item["img"]!,
      );
      dataList.add(tmpData);
    });
    return dataList;
  }
}
