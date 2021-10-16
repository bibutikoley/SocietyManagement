import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.shortestSide > 600) {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.arrow_upward_rounded),
                ),
                SizedBox(
                  width: 12,
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: Icon(Icons.arrow_downward_rounded),
                ),
                SizedBox(
                  width: 12,
                ),
                FloatingActionButton(
                  onPressed: () => {
                    this.setState(() {
                      _counter = 0;
                    })
                  },
                  child: Icon(Icons.autorenew_rounded),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
