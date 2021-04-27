import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Demo'),
    );
    return Scaffold(
      appBar: appBar,
      backgroundColor: white,
      body: Center(
        child: SvgPicture.asset(
          'images/fingerprint.svg',
          width: 30,
          height: 40,
          semanticsLabel: 'vector',
          color: Colors.red,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          double height = appBar.preferredSize.width;
          print(height);
        },
      ),
    );
  }
}
