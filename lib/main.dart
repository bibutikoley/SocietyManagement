import 'package:flutter/material.dart';
import 'RouteGenerator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
