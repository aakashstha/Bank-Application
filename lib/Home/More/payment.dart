import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: lightSlateBlue,
        title: Text(
          'Payment',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            children: [
              topUpButtons('./images/ncellLogo.png', 'Topup', 'Ncell Topup'),
              topUpButtons('./images/ntcLogo.png', 'Prepaid\nTopup',
                  'NTC Prepaid Topup'),
              topUpButtons('./images/ntcLogo.png', 'Postpaid\nTopup',
                  'NTC Postpaid Topup'),
              topUpButtons(
                  './images/smartCellLogo.png', 'Topup', 'Smart Cell Topup'),
            ],
          ),
        ),
      ),
    );
  }

  Widget topUpButtons(String imagePath, String title, String appBarTitle) {
    return TextButton(
      child: Container(
        width: 390,
        height: 100,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.6),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
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
        Navigator.pushNamed(
          context,
          "/topup",
          arguments: appBarTitle,
        );
      },
    );
  }
}
