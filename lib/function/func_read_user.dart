import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class ListCloud {
  String id_user, npm, email, nama;
  ListCloud(
      {required this.id_user,
      required this.npm,
      required this.email,
      required this.nama});
}

Future<List<ListCloud>> read(query) async {
  List<ListCloud> dataList = <ListCloud>[];
  ListCloud tmpData;
 final response = await Dio().get(
    "https://tifrp20a.my.id/5/berita/user/list_user.php",
    queryParameters:{
      "key": query.toString(),
    }
  );
  log("test query: $query");
  log("test read data: ${response.data[0]}");
  var data = response.data;

  log("test decode: ${data[0]}");

  if (data.length == 0) {
    return dataList;
  } else {
    List<ListCloud> tdata = [];
    data.forEach((item) {
      tmpData = ListCloud(
          id_user: item["id_user"]!,
          npm: item["npm"]!,
          email: item["email"]!,
          nama: item["nama"]!);
      dataList.add(tmpData);
    });
    return dataList;
  }
}
