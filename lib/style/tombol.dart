// import 'dart:js';

import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

Widget btnActive({label}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 1),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
      child: MaterialButton(
        // minWidth: double.infinity,
        height: 50,
        onPressed: () {
        },
        color: Color.fromARGB(255, 245, 249, 77),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}

Widget btnNonActive({label}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 1),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
      child: MaterialButton(
        // minWidth: double.infinity,
        height: 50,
        onPressed: () {
        },
        color: Color.fromARGB(255, 245, 245, 245),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
