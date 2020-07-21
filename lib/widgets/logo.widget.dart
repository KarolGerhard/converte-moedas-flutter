import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height:60,
        ),
        Container(
          child: Image.asset(
            "assets/images/logo-teste.png",
            height: 100,
          ), 
        ),
        SizedBox(
          height: 10,
        ), 
        Text(
         "Currency",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            //fontFamily: Thema
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}