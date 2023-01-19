// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'package:flutter/material.dart';
import '../function/func_read_berita_id.dart';
import 'package:crud_mysql/function/func_getImage.dart';
import '../function/func_edit_berita.dart';
import 'package:image_picker/image_picker.dart';

class UbahArtikel extends StatefulWidget {
  const UbahArtikel({super.key});

  @override
  State<UbahArtikel> createState() => _UbahArtikelState();
}

class _UbahArtikelState extends State<UbahArtikel> {
  String? judul;
  String? deskripsi;
  String? gambar;

@override
  void initState() {
    setState(() {
      file = null;
    });
    super.initState();
  }

    List<String> listKota = [
    "Pilih Kategori Berita",
    "Teknik Industri",
    "Teknik Informatika",
    "DKV",
    "Bussines Digital"
  ];

  String nKota = "Pilih Kategori Berita";
  int? nilaiKota;

  void pilihKota(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nKota = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    ListCloud detailEdit =
        ModalRoute.of(context)!.settings.arguments as ListCloud;

    TextEditingController ctl_judul =
        TextEditingController(text: detailEdit.judul);
    TextEditingController ctl_deskrpsi =
        TextEditingController(text: detailEdit.isi_berita);
        TextEditingController ctl_kategori =
        TextEditingController(text: detailEdit.kategori);
    TextEditingController ctl_gambar = TextEditingController();

    if (file != null) {
      gambar = nameFile;
    } else {
      gambar = detailEdit.img.toString();
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(detailEdit.judul.toString()),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
            children: <Widget>[
              Text(
                    "Kategori Artikel",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                  DropdownButton(
                    value: nKota,
                    onChanged: (String? value) {
                      pilihKota(value ?? ""); //perubahaan saat kota di pilih
                      nilaiKota = listKota.indexOf(value ??
                          ""); //mengambil nilai index berdasarkan urutan list
                    },
                    items: listKota.map((String value) {
                      return DropdownMenuItem(
                        //tampilan isi data dropdown
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                  ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: TextField(
                    controller: ctl_judul,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Judul',
                      hintText: "Isi data judul",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: MaterialButton(
                            onPressed: () {
                              takePicture(ImageSource.gallery, setState);
                            },
                            child: Text("Gallery"),
                            color: Colors.yellow)),
                    Expanded(
                        child: MaterialButton(
                      onPressed: () {
                        takePicture(ImageSource.camera, setState);
                      },
                      child: Text("Camera"),
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                    )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(gambar.toString().split('/').last),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: TextFormField(
                    controller: ctl_deskrpsi,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Deksirpsi',
                      hintText: "Isi data deskripsi",
                      
                    ),
                    minLines:
                        25, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      editData(context, detailEdit.id_berita, ctl_judul.text, ctl_deskrpsi.text,nilaiKota, file,ctl_kategori);
                    },
                    child: Text("Simpan"),
                  ),
                ),
              ),
            ],
          ),
          )),
    );
  }
}
