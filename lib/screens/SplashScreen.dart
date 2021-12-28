import 'dart:async';

import 'package:flutter/material.dart';
import 'package:society_management/utils/Extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => {
              Navigator.pushReplacementNamed(context, "/landingPage",
                  arguments: "".randomStringWithLimit(5))
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Text("Splash Screen"),
        ),
      ),
    );
  }
}
