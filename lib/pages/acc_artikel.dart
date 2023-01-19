import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccArtikel extends StatelessWidget {
  const AccArtikel({super.key});

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
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
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
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Judul : Perkembangan Teknlogi di bandung",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum ullamcorper ipsum, blandit volutpat eros sagittis eget.",
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      textDirection: TextDirection.ltr,
                    ),
                    SizedBox(
                      height: 10,
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
                            "Acc",
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
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
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
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Judul : Perkembangan Teknlogi di bandung",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum ullamcorper ipsum, blandit volutpat eros sagittis eget.",
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      textDirection: TextDirection.ltr,
                    ),
                    SizedBox(
                      height: 10,
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
                            "Acc",
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
            ],
          ),
        ),
      ),
    );
  }
}
