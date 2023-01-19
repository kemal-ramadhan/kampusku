import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:crud_mysql/function/func_isLoading.dart';

delete(BuildContext context, id_berita) {
  Widget buttonCancel = TextButton(
      onPressed: () => Navigator.of(context).pop(),
      child: const Text('Cancel'));
  Widget buttonOK = TextButton(
      onPressed: () => deleteImage(context, id_berita),
      child: const Text('OK'));

  AlertDialog deleteQuestion = AlertDialog(
    title: Text("Hapus"),
    content: Text("Hapus data " + id_berita.toString() + " ?"),
    actions: [buttonOK, buttonCancel],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return deleteQuestion;
      });
}

//fungsi delete data
deleteImage(context, id_berita) async {
  //loading lalu pushnamed ke fungsi read
  isLoading(context);
  FormData sendData = FormData.fromMap({
    "id_berita": id_berita.toString(),
  });
  final response = await Dio().post(
      "http://tifrp20a.my.id/5/berita/berita_isi/deleteBerita.php",
      data: sendData);
  log("test send data :" + id_berita.toString());
     return  Navigator.of(context, rootNavigator: true).pushNamed("/menu");

}
