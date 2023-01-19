import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:crud_mysql/function/func_isLoading.dart';

delete(BuildContext context, id_admin) {
  Widget buttonCancel = TextButton(
      onPressed: () => Navigator.of(context).pop(),
      child: const Text('Cancel'));
  Widget buttonOK = TextButton(
      onPressed: () => deleteImage(context, id_admin), child: const Text('OK'));

  AlertDialog deleteQuestion = AlertDialog(
    title: Text("Hapus"),
    content: Text("Hapus data " + id_admin.toString() + " ?"),
    actions: [buttonOK, buttonCancel],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return deleteQuestion;
      });
}

//fungsi delete data
deleteImage(context, id_admin) async {
  //loading lalu pushnamed ke fungsi read
  isLoading(context);
  FormData sendData = FormData.fromMap({
    "id_admin": id_admin.toString(),
  });
  final response = await Dio().post(
      "http://tifrp20a.my.id/5/berita/admin/deleteAdmin.php",
      data: sendData);
  log("test send data :" + id_admin.toString());
  return Navigator.of(context)
      .pushNamedAndRemoveUntil('/read', (Route<dynamic> route) => false);
}
