import 'package:flutter/material.dart';
import 'package:flutter_screensaver/utils.dart';

import 'second_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _goToSecondScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    AppUtils appUtils = new AppUtils(buildContext: context);
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Screen Saver'),
        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: _goToSecondScreen,
          tooltip: 'Second Screen',
          child: Icon(Icons.add),
        ),
      ),
      behavior: HitTestBehavior.translucent,
      onTapDown: (detection) => appUtils.detectGesture(),
    );
  }
}
