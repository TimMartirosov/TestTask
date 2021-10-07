// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:test_aplication/screens/contact.dart';

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 65, 85, 1),
        title: Text(
          'TestTask by Tim',
          style: TextStyle(fontSize: 28, fontFamily: 'Akronim-Regular'),
        ),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contactSrceen()));
              },
              icon: Icon(
                Icons.assignment_ind,
                color: Colors.white,
              ),
              label: SizedBox.shrink())
        ],
      ),
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Text(
              "Hey there",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 46,
                  fontFamily: 'Akronim-Regular'),
            ),
          ),
        ),
      ),
    );
  }
}
