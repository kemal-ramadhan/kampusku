import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tentang extends StatelessWidget {
  const Tentang({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tentang Pembuat",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Fauzy Akbar",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text("20552011286"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hamda Alma Jirga",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text("20552011043"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Heru Septiana",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text("20552011121"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Kemal Ramadhan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text("20552011125"),
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
