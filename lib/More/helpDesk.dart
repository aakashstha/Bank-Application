import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class HelpDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                size: 28,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        backgroundColor: bermuda,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            Container(
              width: 414,
              height: 76,
              color: white,
              child: Center(
                child: Text(
                  'Contact Details',
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 278,
              height: 60,
              color: white,
              child: Center(
                child: Text(
                  'Card Center Hotline',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 278,
              height: 60,
              color: white,
              child: Center(
                child: Text(
                  'Ph: 16600177771',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
