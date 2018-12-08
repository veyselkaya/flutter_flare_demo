import "package:flare_flutter/flare_actor.dart";
import "package:flutter/material.dart";

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter and Flare very cool',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPaused = true;
  // You can change GestureDetector click options.
  // tray other assets/*.flr files
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isPaused = false;
                });
              },
              child: FlareActor(
                "assets/flutter_logo.flr",
                alignment: Alignment.center,
                animation: "flutter_logo",
                fit: BoxFit.contain,
                isPaused: isPaused,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onDoubleTap: () {
                
              },
              child: FlareActor(
                "assets/Animals.flr",
                alignment: Alignment.center,
                animation: "Animals",
                fit: BoxFit.contain,
                isPaused: isPaused,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
