import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class ScanToPay2 extends StatefulWidget {
  @override
  _ScanToPay2State createState() => _ScanToPay2State();
}

class _ScanToPay2State extends State<ScanToPay2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
      ),
    );
  }
}
