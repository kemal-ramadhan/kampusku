import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'onboard_dua.dart';

class OnboardOne extends StatelessWidget {
  const OnboardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              height: 450,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/boardone.png'))),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/line.png'))),
            ),
            SizedBox(
              height: 10,
            ),
            Text("MEDIA INFORMASI", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32), textAlign: TextAlign.center),
                        SizedBox(
              height: 10,
            ),
            Text("Sekolah Tinggi Teknologi Bandung", style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnboardTwo()));
                  },
                  color: Color.fromARGB(255, 43, 138, 202),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Selanjutnya",
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
            Text("TIFRP 20 A - Mobile II", style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
   
          ],
        ),
      ),
    );
  }
}
