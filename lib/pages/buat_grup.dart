import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BuatGrup extends StatelessWidget {
  const BuatGrup({super.key});

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
                    "Masukan Nama Grup",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
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
                    "Deskripsi Grup",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 5,
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
                        5, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                  SizedBox(
                    height: 10,
                  )
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
                      Navigator.pop(context);
                    },
                    color: Color.fromARGB(255, 43, 138, 202),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Buat Grup",
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
  }
}
