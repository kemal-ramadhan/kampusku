import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class ListCloud {
  String id_admin, nik, email, nama, password;
  ListCloud({
    required this.id_admin,
    required this.nik,
    required this.email,
    required this.nama,
    required this.password,
  });
}

Future<List<ListCloud>> read(query) async {
  List<ListCloud> dataList = <ListCloud>[];
  ListCloud tmpData;
  final response = await Dio().get(
      "http://tifrp20a.my.id/5/berita/admin/listAdmin.php?",
      queryParameters: {
        "key": query.toString(),
      });
  log("test query: $query");
  log("test read data: ${response.data[0]}");
  var data = response.data;
  log("test decode: $data[0]}");

  if (data.length == 0) {
    return dataList;
  } else {
    List<ListCloud> tdata = [];
    data.forEach((item) {
      tmpData = ListCloud(
        id_admin: item["id_admin"]!,
        nik: item["nik"]!,
        email: item["email"]!,
        nama: item["nama"]!,
        password: item["password"]!,
      );
      dataList.add(tmpData);
    });
    return dataList;
  }
}
