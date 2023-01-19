// import 'dart:js';

import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

Widget makeInput({label, obscureText = false, controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }

  Widget InputSearch({obscuretext = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 15,),
        TextField(
          obscureText: obscuretext,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            hintText: "Cari Sesuatu ...",
            // icon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(10))
          ),
        )
      ],
    );
  }