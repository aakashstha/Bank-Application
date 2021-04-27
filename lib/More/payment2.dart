import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class Payment2 extends StatefulWidget {
  @override
  _Payment2State createState() => _Payment2State();
}

class _Payment2State extends State<Payment2> {
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
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          padding: EdgeInsets.only(top: 60),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                'Amount',
                style: TextStyle(
                  fontSize: 22,
                  color: white,
                ),
              ),
            ),
            Container(
              width: 394,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Rs. 100',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                'Ncell No.',
                style: TextStyle(
                  fontSize: 22,
                  color: white,
                ),
              ),
            ),
            Container(
              width: 394,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.contact_phone,
                  ),
                  contentPadding: EdgeInsets.only(left: 20, top: 15),
                  hintText: 'Phone Number',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                'Pay With',
                style: TextStyle(
                  fontSize: 22,
                  color: white,
                ),
              ),
            ),
            Container(
              width: 394,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: '1876987435627162',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    color: bermuda,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: CupertinoButton(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 24,
                        color: black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 26,
                ),
                Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    color: bermuda,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: CupertinoButton(
                    child: Text(
                      "Submit",
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
