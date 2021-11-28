import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

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
                  arguments: _generateRandomString())
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Splash Screen"),
        ),
      ),
    );
  }

  String _generateRandomString() {
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random _rnd = Random();
    String getRandomString(int length) =>
        String.fromCharCodes(Iterable.generate(
            length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
    return getRandomString(5);
  }
}
