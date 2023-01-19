import 'package:crud_mysql/pages/detail_artikel_saya.dart';
import 'package:crud_mysql/pages/detail_berita.dart';
import 'package:crud_mysql/pages/menu.dart';
import 'package:crud_mysql/pages/splashscreen.dart';
import 'package:crud_mysql/pages/ubah_artikel.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'add.dart';
import '../pages/onboard.dart';
import '../pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/menu': (context) => Menus(),
        '/detail_berita' :(context) => DetailBerita(),
        '/ubah_artikel' :(context) => UbahArtikel(),
        '/detail_artikel_saya' :(context) => DetailArtikelSaya(),
      },
    );
  }
}
