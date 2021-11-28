import 'package:flutter/material.dart';

class LandingPageScreen extends StatelessWidget {
  final Object? argument;

  const LandingPageScreen(this.argument, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "Welcome to landing page ",
            style: TextStyle(color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: (argument ?? '').toString().trim(),
                  style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
