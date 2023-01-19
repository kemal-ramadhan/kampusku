import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../style/tombol.dart';
import '../style/input.dart';
import '../style/card.dart';
import '../function/func_read_berita.dart';

class DetailBerita extends StatefulWidget {
  DetailBerita({Key? key}) : super(key: key);

  @override
  State<DetailBerita> createState() => _DetailBeritaState();
}

class _DetailBeritaState extends State<DetailBerita> {
  @override
  Widget build(BuildContext context) {
     final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    ListCloud detail = arguments["data"];

    return Scaffold(
      // backgroundColor: Colors.white,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                detail.kategori,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                detail.judul,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.grey[700]),
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(detail.img.toString()),
              SizedBox(
                height: 20,
              ),
              Text(
                detail.isi_berita,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Komentar",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
                minLines:
                    6, // any number you need (It works as the rows for the textarea)
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/avatar big.png",
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Fauzy Akbar",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Tehnik Informatika")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Wahh beritanya sangat bermanfaat sekali.",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );;
  }
}


