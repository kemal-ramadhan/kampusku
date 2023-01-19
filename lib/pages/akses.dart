import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'menu.dart';
import '../style/input.dart';
import '../function/func_login.dart';

class Akses extends StatelessWidget {
  // const Akses({super.key});
  

  // ignore: non_constant_identifier_names
  TextEditingController ctl_nik = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController ctl_password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              // Text("Hai, Silahkan Masuk!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24), textAlign: TextAlign.left),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"))),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login.png"))),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    makeInput(label: "Nik", controller: ctl_nik),
                    makeInput(label: "Password", obscureText: true, controller: ctl_password),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  // padding: EdgeInsets.only(top: 3, left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      login(context, ctl_nik.text, ctl_password.text);
                    },
                    color: Color.fromARGB(255, 43, 138, 202),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Belum memiliki akun? Bantuan!",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
