import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class Payment1 extends StatefulWidget {
  @override
  _Payment1State createState() => _Payment1State();
}

class _Payment1State extends State<Payment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: TextStyle(fontSize: 18),
        ),
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
        backgroundColor: lightSlateBlue,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            children: [
              topUpButtons('./images/ncellLogo.png', 'Topup'),
              topUpButtons('./images/ntcLogo.png', 'Topup'),
              topUpButtons('./images/ntcLogo.png', 'Topup'),
              topUpButtons('./images/smartCellLogo.png', 'Topup'),
            ],
          ),
        ),
      ),
    );
  }

  Widget topUpButtons(String imagePath, String title) {
    return TextButton(
      child: Container(
        width: 390,
        height: 100,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 195.0,
              height: 100.0,
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                color: indigo,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/payment2");
      },
    );
  }
}
