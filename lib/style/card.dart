// import 'dart:js';

import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../pages/detail_berita.dart';


Widget ImagePost({title, kategori, terbit, image}) {
    return Container(
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
             // height: MediaQuery.of(context).size.height,
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/$image'))
             ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10,),
                  Text("$kategori", style: TextStyle(fontSize: 14, color: Colors.grey[700]),),
                  MaterialButton(
                    color: Colors.white,

                    onPressed: () {
                      // Navigator.push(context , MaterialPageRoute(builder: (context) => const DetailBerita()));
                    },
                    child: Text("$title", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.grey[700]),),
                    ),
                  SizedBox(height: 10,),
                  Text("$terbit", style: TextStyle(fontSize: 14, color: Colors.grey[700]), textAlign: TextAlign.right,),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
    );
  }