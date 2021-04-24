import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24, left: 23),
      child: Container(
        width: 368,
        height: 623,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hamro Bank \n-- Share',
                    style: TextStyle(
                      fontSize: 36,
                      color: white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
