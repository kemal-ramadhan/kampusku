import 'package:flutter/material.dart';
import '../function/func_read_berita_id.dart';
import '../function/func_delete_berita.dart';

class DetailArtikelSaya extends StatefulWidget {
  DetailArtikelSaya({Key? key}) : super(key: key);

  @override
  State<DetailArtikelSaya> createState() => _DetailArtikelSayaState();
}

class _DetailArtikelSayaState extends State<DetailArtikelSaya> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    ListCloud detail = arguments["data"];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(detail.judul.toString()),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Image.network(
                    detail.img.toString(),
                    height: 200,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    detail.isi_berita.toString(),
                  )),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/ubah_artikel',
                            arguments: ListCloud(
                                id_berita: detail.id_berita,
                                id_user: detail.id_user,
                                id_admin: detail.id_admin,
                                judul: detail.judul,
                                isi_berita: detail.isi_berita,
                                waktu_dibuat: detail.waktu_dibuat,
                                kategori: detail.kategori,
                                status: detail.status,
                                img: detail.img));
                      },
                      child: Text("Edit"),
                      color: Colors.green,
                      textColor: Colors.white,
                    )),
                    Expanded(
                        child: MaterialButton(
                      onPressed: () {
                        delete(context, detail.id_berita);
                      },
                      child: Text("Hapus"),
                      color: Colors.red,
                      textColor: Colors.white,
                    )),
                  ],
                ),
              ),
            ],
          ),
          )
          ),
    );
  }
}
