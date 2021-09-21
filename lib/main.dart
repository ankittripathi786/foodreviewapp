import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:food_review_demo/Signup.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Food Review App',
      home: SignUp(title: 'Partner with us'),
      debugShowCheckedModeBanner: false,
    );
  }
}
