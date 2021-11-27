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

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _performAction(ActionType actionType) {
    switch (actionType) {
      case ActionType.SUB:
        {
          _decrementCounter();
        }
        break;
      case ActionType.ADD:
        {
          _incrementCounter();
        }
        break;
      case ActionType.RESET:
        {
          _resetCounter();
        }
        break;
    }
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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              ActionButtons(
                function: _performAction,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButtons extends StatefulWidget {
  final Function(ActionType type) function;

  ActionButtons({Key? key, required this.function}) : super(key: key);

  @override
  _ActionButtonsState createState() => _ActionButtonsState();
}

enum ActionType { ADD, SUB, RESET }

class _ActionButtonsState extends State<ActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: () => widget.function(ActionType.ADD),
          child: Icon(Icons.arrow_upward_rounded),
        ),
        SizedBox(
          width: 12,
        ),
        FloatingActionButton(
          onPressed: () => widget.function(ActionType.SUB),
          child: Icon(Icons.arrow_downward_rounded),
        ),
        SizedBox(
          width: 12,
        ),
        FloatingActionButton(
          onPressed: () => widget.function(ActionType.RESET),
          child: Icon(Icons.autorenew_rounded),
        ),
      ],
    );
  }
}
