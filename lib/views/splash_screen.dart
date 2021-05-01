import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recipeapp/views/bottombar/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child:  Image.asset('assets/logo.png'),
          ),
        ],
      ),
    );
  }
}