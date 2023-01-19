import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../style/input.dart';

class Grup extends StatelessWidget {
  const Grup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      children: <Widget>[
        GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                ),
                child: MaterialButton(
                  // minWidth: double.infinity,
                  // height: 50,

                  onPressed: () {},
                  color: Color.fromARGB(255, 255, 255, 255),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset("assets/images/avatar big.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("TIF-RP-20A")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
