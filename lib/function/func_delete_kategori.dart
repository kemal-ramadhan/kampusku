import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'func_isLoading.dart';

delete(BuildContext context, npm, id_user) {
  Widget buttonCancel = TextButton(
      onPressed: () => Navigator.of(context).pop(),
      child: const Text('Cancel'));
  Widget buttonOK = TextButton(
      onPressed: () => deleteuser(context, id_user), child: const Text('OK'));

  AlertDialog deleteQuestion = AlertDialog(
    title: Text("Hapus"),
    content: Text("Hapus data " + npm.toString() + " ?"),
    actions: [buttonOK, buttonCancel],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return deleteQuestion;
      });
}

//fungsi delete data
deleteuser(context, id_user) async {
  //loading lalu pushnamed ke fungsi read
  isLoading(context);
  FormData SendData = FormData.fromMap({
    "id_user": id_user.toString(),
  });

  final response = await Dio().post(
    "http://tifrp20a.my.id/5/berita/user/delete_user.php", data: SendData
  );
  log("test send data :" + id_user.toString());
  return Navigator.of(context)
      .pushNamedAndRemoveUntil('/read', (Route<dynamic> route) => false);
}
