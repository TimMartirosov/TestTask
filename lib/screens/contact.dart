import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_aplication/screens/home.dart';

class contactSrceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(50, 65, 85, 1),
          title: Text(
            'Contacts',
            style: TextStyle(fontSize: 28, fontFamily: 'Akronim-Regular'),
          ),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TestApp()));
                },
                icon: Icon(
                  Icons.android_sharp,
                  color: Colors.white,
                ),
                label: SizedBox.shrink())
          ],
        ),
        body: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: 275.0,
                height: 275.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5.0,
                      spreadRadius: 5.0,
                      offset: Offset(-5, 5),
                    )
                  ], //boxShadow
                  image: DecorationImage(
                      image: AssetImage("images/background.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'E-MAIL - Fredi.xichkok@gmail.com',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontFamily: 'Akronim-Regular'),
            ),
            SizedBox(height: 20),
            Text(
              'Telegram - Tim_Art_V',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontFamily: 'Akronim-Regular'),
            ),
            SizedBox(height: 20),
            Text(
              'GitHub - https://github.com/TimMartirosov',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontFamily: 'Akronim-Regular'),
            ),
          ],
        ));
  }
}
