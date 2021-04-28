import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 170,
                  height: 140,
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: lightSlateBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Column(
                      children: [
                        SizedBox(height: 5),
                        SvgPicture.asset(
                          'images/sendMoney.svg',
                          width: 70,
                          height: 70,
                          color: white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Send Money',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/sendMoney");
                    },
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: 170,
                  height: 140,
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: lightSlateBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Column(
                      children: [
                        SizedBox(height: 5),
                        SvgPicture.asset(
                          'images/payment.svg',
                          width: 70,
                          height: 70,
                          color: white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Payment',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/payment1");
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 170,
                  height: 140,
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: lightSlateBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Column(
                      children: [
                        SizedBox(height: 5),
                        SvgPicture.asset(
                          'images/qrCode.svg',
                          width: 70,
                          height: 70,
                          color: white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Scan to Pay',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/scanToPay1");
                    },
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: 170,
                  height: 140,
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: lightSlateBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Column(
                      children: [
                        SizedBox(height: 5),
                        Icon(
                          Icons.help_outline_rounded,
                          size: 70,
                          color: white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Help Desk',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/helpDesk");
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
            ),
            TextButton(
              child: Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 20,
                  color: lightSlateBlue,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/logIn");
              },
            ),
          ],
        ),
      ),
    );
  }
}
