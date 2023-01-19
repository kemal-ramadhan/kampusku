// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../pages/Artikel_saya.dart';
import '../pages/acc_artikel.dart';
import '../pages/akses.dart';
import '../pages/berita.dart';
import '../pages/buat_grup.dart';
import '../pages/grup.dart';
import '../pages/menu.dart';
import '../pages/tambah_artikel.dart';
import '../pages/tentang.dart';
import '../style/input.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/images/avatar big.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "User",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text("Sekolah Tinggi Teknologi Bandung"),
              SizedBox(
                height: 20,
              ),
              makeInput(label: "Masukan Kode Grup"),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Artikel",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          height: 50,

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TambahArtikel()));
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.add,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              SizedBox(width: 20),
                              Text(
                                "Buat Artikel",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          height: 50,

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BuatGrup()));
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.add_home_work_outlined,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              SizedBox(width: 20),
                              Text(
                                "Buat Grup",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          height: 50,

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccArtikel()));
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.new_label_sharp,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              SizedBox(width: 20),
                              Text(
                                "Acc Artikel",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          height: 50,

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ArtikelSaya()));
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.newspaper_sharp,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              SizedBox(width: 20),
                              Text(
                                "Artikel Saya",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Pengaturan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          height: 50,

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Menus()));
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.account_tree_outlined,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              SizedBox(width: 20),
                              Text(
                                "Grup Saya",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          height: 50,

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Menus()));
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.newspaper,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              SizedBox(width: 20),
                              Text(
                                "Artikel",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          height: 50,

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tentang()));
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.info_outline,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              SizedBox(width: 20),
                              Text(
                                "Tentang",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          height: 50,

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Akses()));
                          },
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.logout,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              SizedBox(width: 20),
                              Text(
                                "Keluar",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
