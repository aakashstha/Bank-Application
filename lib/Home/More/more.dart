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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 4),
                      ),
                    ],
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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 4),
                      ),
                    ],
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
                      Navigator.pushNamed(context, "/payment");
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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 4),
                      ),
                    ],
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
                      Navigator.pushNamed(context, "/scanToPay");
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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 4),
                      ),
                    ],
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
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                alertDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void alertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      backgroundColor: white,
      title: Center(
        child: Text(
          "Hamro Bank",
          style: TextStyle(
              fontSize: 30,
              color: indigo,
              fontFamily: 'Arial_Rounded',
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        ),
      ),
      content: Text(
        "Are you sure you want to log out.",
        style: TextStyle(
          fontSize: 16,
          color: indigo,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('No'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/logIn");
          },
          child: Text('Yes'),
        )
      ],
    );
    showDialog(
      context: context,
      builder: (buildContext) {
        return alertDialog;
      },
    );
  }
}
