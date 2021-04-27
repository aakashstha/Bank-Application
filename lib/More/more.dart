import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

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
                  width: 180,
                  height: 140,
                  decoration: BoxDecoration(
                    color: bermuda,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Column(
                      children: [
                        SizedBox(height: 5),
                        Icon(
                          Icons.send,
                          size: 90,
                          color: white,
                        ),
                        SizedBox(height: 5),
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
                  width: 180,
                  height: 140,
                  decoration: BoxDecoration(
                    color: bermuda,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Column(
                      children: [
                        SizedBox(height: 5),
                        Icon(
                          Icons.payment_outlined,
                          size: 90,
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
                  width: 180,
                  height: 140,
                  decoration: BoxDecoration(
                    color: bermuda,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Column(
                      children: [
                        SizedBox(height: 10),
                        Icon(
                          Icons.qr_code_scanner_outlined,
                          size: 85,
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
                  width: 180,
                  height: 140,
                  decoration: BoxDecoration(
                    color: bermuda,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Column(
                      children: [
                        SizedBox(height: 5),
                        Icon(
                          Icons.help_outline_rounded,
                          size: 90,
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
              height: 100,
            ),
            TextButton(
              child: Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 20,
                  color: bermuda,
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
