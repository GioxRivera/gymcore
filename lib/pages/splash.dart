import 'dart:async';
import 'dart:io';

import 'package:gymcore/providers/db.general.dart';
import 'package:flutter/material.dart';
import 'package:gymcore/pages/pages.dart';

class Splash extends StatefulWidget {

  static const String routeName = '/splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => (Platform.isIOS)
        ? Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => CheckAuth()
            )
          )
        : Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => CheckAuth()
            )
          )
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          height: 300,
          width: 300,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}