import 'dart:developer';

import 'package:crud_mysql/pages/detail_berita.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../style/tombol.dart';
import '../style/input.dart';
import '../function/func_read_berita_id.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'dart:convert';


class ArtikelSaya extends StatefulWidget {
  const ArtikelSaya({super.key});

  @override
  State<ArtikelSaya> createState() => _ArtikelSayaState();
}

class _ArtikelSayaState extends State<ArtikelSaya> {
  String qsearch = "4";
  List<ListCloud> data = <ListCloud>[];

  @override
  void initState() {
    //inisialisasi awal disini
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController searchingController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    textAlign: TextAlign.left,
                    controller: searchingController,
                    onChanged: (value) {
                      EasyDebounce.debounce(
                          'my-search', // <-- An ID for this particular debouncer
                          const Duration(
                              milliseconds: 500), // <-- The debounce duration
                          () async {
                        log("SEARCH ${searchingController.text}");
                        setState(() {
                          qsearch = searchingController.text;
                        });
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Cari Sesuatu ...",
                        // icon: Icon(Icons.search),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10))),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "ARTIKEL SAYA",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: FutureBuilder<List<ListCloud>>(
                    future: read(qsearch.toString()),
                    builder: (inContext, snapshot) {
                      if (snapshot.connectionState != ConnectionState.done) {
                        return const CircularProgressIndicator();
                      } else {
                        log("TEST bb ${snapshot.data}");
                      }
                      log("TEST $snapshot");
                      List<Widget> tempChildren = <Widget>[];
                      if (snapshot.hasData) {
                        for (var item in snapshot.data!) {
                          Widget child = GestureDetector(
                            child: Container(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    // height: MediaQuery.of(context).size.height,
                                    height: 250,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(item.img))),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 5, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          item.kategori,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey[700]),
                                        ),
                                        MaterialButton(
                                          color: Colors.white,
                                          onPressed: () {
                                            // Navigator.push(context , MaterialPageRoute(builder: (context) => const DetailBerita()));
                                          },
                                          child: Text(
                                            item.judul,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                                color: Colors.grey[700]),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Tanggal Terbit : " +
                                              item.waktu_dibuat,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey[700]),
                                          textAlign: TextAlign.right,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () async {
                              Navigator.of(context, rootNavigator: true)
                                  .pushNamed('/detail_artikel_saya',
                                      arguments: {
                                    "data": ListCloud(
                                        id_berita: item.id_berita,
                                        id_user: item.id_user,
                                        id_admin: item.id_admin,
                                        judul: item.judul,
                                        isi_berita: item.isi_berita,
                                        waktu_dibuat: item.waktu_dibuat,
                                        kategori: item.kategori,
                                        status: item.status,
                                        img: item.img)
                                  });
                              setState(() {
                                qsearch = "";
                              });
                            },
                          );
                          tempChildren.add(child);
                        }
                        return Column(
                          children: tempChildren,
                        );
                      } else {
                        return const Text("NO DATA");
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
