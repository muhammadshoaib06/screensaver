import 'package:flutter/material.dart';

import 'utils.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppUtils appUtils = new AppUtils(buildContext: context);
    return new Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTapDown: (detection) => appUtils.detectGesture(),
        child: Center(
          child: Text(
            'Second Page\nPop to previous screen!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
