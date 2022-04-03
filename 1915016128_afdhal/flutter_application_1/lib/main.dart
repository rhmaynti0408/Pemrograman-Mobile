import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart'; //import module hexcolor

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "POSTTEST 1 AFDHAL",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Posttest1(),
    );
  }
}

class Posttest1 extends StatelessWidget {
  const Posttest1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mqwidth = MediaQuery.of(context).size.width;
    var mqhegith = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posttest 1 Afdhal"),
      ),
      body: Center(
        child: Container(
          width: mqwidth / 1.2,
          height: mqhegith / 1.2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  HexColor('#E6BCCD'), //menggukanan hex color
                  HexColor('#7E52A0'),
                ]),
            border: Border.all(
              color: HexColor('#012A36'),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              'Afdhal Dhiyaul Khair',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
