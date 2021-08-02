import 'dart:async';

import 'package:flutter/material.dart';

import 'screen_saver.dart';

class AppUtils {
  AppUtils({required this.buildContext});

  BuildContext buildContext;
  Timer? _timer;

  detectGesture() {
    print("Gesture Detection!");
    if (_timer != null) {
      _timer?.cancel();
    }
    _timer = startTimeout();
  }

  startTimeout() {
    print('Timeout started!');
    return new Timer(Duration(seconds: 5), handleTimeout);
  }

  void handleTimeout() {
    print('Timeout is finished. GO to ScreenSaver Page!');
    try {
      Navigator.push(
        buildContext,
        MaterialPageRoute(builder: (context) => ScreenSaver()),
      );
    } on Exception catch (e) {
      print('Navigation: ${e.toString()}');
    }
  }
}
