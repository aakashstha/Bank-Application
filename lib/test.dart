import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: white,
                width: 200,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
