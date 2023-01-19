import 'package:crud_mysql/function/func_getImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../function/func_add_berita.dart';
import 'package:image_picker/image_picker.dart';


class TambahArtikel extends StatefulWidget  {
  const TambahArtikel({super.key});

  @override
  State<TambahArtikel> createState() => _TambahArtikelState();
}


class _TambahArtikelState extends State<TambahArtikel>  {
  String? judul;
  String? deskripsi;
  String? id_kategori;

  
  TextEditingController ctl_judul = TextEditingController();
  TextEditingController ctl_isi_berita = TextEditingController();
  TextEditingController ctl_id_kategori = TextEditingController();

  @override
  void initState() {
    setState(() {
      file = null;
      nameFile = "Silahkan pilih gambar";
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120), // Set this height
        child: Container(
          // color: Colors.white,
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new_outlined)),
              // InputSearch(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    "Masukan Judul Artikel",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: ctl_judul,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Masukan Isi Artikel",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: ctl_isi_berita,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    minLines:
                        25, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                  SizedBox(
                    height: 10,
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
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(nameFile),
                ),
              ),

                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  // padding: EdgeInsets.only(top: 3, left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {
                       CircularProgressIndicator();
                      var ctl_judul2 = ctl_judul;
                      addData(context,  "1", ctl_judul2.text, ctl_isi_berita.text,nilaiKota, file );
                    },
                    color: Color.fromARGB(255, 43, 138, 202),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Simpan Artikel",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
