import 'package:flutter/material.dart';

class ScreenSaver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Screen Saver');
    return new GestureDetector(
      child: Scaffold(
        body: Container(
          color: Colors.teal,
          child: Center(
            child: Text(
              'Screen Saver Content',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
