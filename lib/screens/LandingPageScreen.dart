import 'package:flutter/material.dart';
import 'package:society_management/utils/Extensions.dart';

class LandingPageScreen extends StatefulWidget {
  final Object? argument;

  const LandingPageScreen(this.argument, {Key? key}) : super(key: key);

  @override
  _LandingPageScreenState createState() => _LandingPageScreenState();
}

class _LandingPageScreenState extends State<LandingPageScreen> {

  String? _customMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.lime),
        child: Center(
          child: GestureDetector(
            onTap: () {
              print("object tapped");
              setState(() {
                _customMessage = "".randomStringWithLimit(8);
              });
            },
            child: RichText(
              text: TextSpan(
                text: "Welcome to landing page ",
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: ((_customMessage ?? widget.argument) ?? '')
                        .toString()
                        .trim(),
                    style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
