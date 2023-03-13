import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        body: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.teal,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/blue_bird.jpg')),
                  const Text(
                    'Arara Azul',
                    style: TextStyle(
                      fontFamily: 'Climate Crisis',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2.5),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  IntrinsicWidth(
                      child: Column(
                    children: [
                      tel,
                      email,
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

var tel = Container(
  margin: const EdgeInsets.only(top: 15.0),
  padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.white,
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: const [
      Icon(
        Icons.call,
        color: Colors.teal,
        size: 16,
      ),
      SizedBox(
        width: 10,
      ),
      Text('45 99968-8457',
          style: TextStyle(
            color: Colors.teal,
            fontFamily: 'Inter',
            fontSize: 16,
          ))
    ],
  ),
);

var email = Container(
  margin: const EdgeInsets.only(top: 15.0),
  padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.white,
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: const [
      Icon(
        Icons.email,
        color: Colors.teal,
        size: 16,
      ),
      SizedBox(
        width: 10,
      ),
      Text('arara@araramail.com',
          style: TextStyle(
            color: Colors.teal,
            fontFamily: 'Inter',
            fontSize: 16,
          ))
    ],
  ),
);
