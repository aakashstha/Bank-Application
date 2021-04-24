import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class ScanToPay1 extends StatefulWidget {
  @override
  _ScanToPay1State createState() => _ScanToPay1State();
}

class _ScanToPay1State extends State<ScanToPay1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          // Main Box in this Page
          Container(
            width: 374,
            height: 488,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Icon(
                  Icons.person,
                  size: 150,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Aakash Shrestha',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.qr_code,
                  size: 150,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'What you are sharing: Your name, your photo, bank name and bank account number.',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          // Buttons
          Row(
            children: [
              Container(
                width: 180,
                height: 60,
                decoration: BoxDecoration(
                  color: monteCarlo,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CupertinoButton(
                  child: Text(
                    "SHARE",
                    style: TextStyle(
                      fontSize: 24,
                      color: black,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Container(
                width: 180,
                height: 60,
                decoration: BoxDecoration(
                  color: monteCarlo,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CupertinoButton(
                  child: Text(
                    "SCAN",
                    style: TextStyle(
                      fontSize: 24,
                      color: black,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
