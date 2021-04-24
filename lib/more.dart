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
                    color: cornFlowerBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.send_to_mobile,
                      size: 70,
                      color: white,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: 180,
                  height: 140,
                  decoration: BoxDecoration(
                    color: cornFlowerBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.payment_outlined,
                      size: 70,
                      color: white,
                    ),
                    onPressed: () {},
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
                    color: cornFlowerBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.qr_code_outlined,
                      size: 70,
                      color: white,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: 180,
                  height: 140,
                  decoration: BoxDecoration(
                    color: cornFlowerBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.help,
                      size: 70,
                      color: white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Container(
              width: 100,
              height: 85,
              decoration: BoxDecoration(
                color: cornFlowerBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.lock,
                  size: 40,
                  color: white,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
