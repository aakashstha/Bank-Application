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
        title: Text(
          'NTC Prepaid Topup',
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
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          padding: EdgeInsets.only(top: 45),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                'Amount',
                style: TextStyle(
                  fontSize: 20,
                  color: white,
                ),
              ),
            ),
            Container(
              width: 390,
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
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                'Ncell No.',
                style: TextStyle(
                  fontSize: 20,
                  color: white,
                ),
              ),
            ),
            Container(
              width: 390,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.contact_phone,
                      color: lightSlateBlue,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(left: 20, top: 15),
                  hintText: 'Phone Number',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                'Pay With',
                style: TextStyle(
                  fontSize: 20,
                  color: white,
                ),
              ),
            ),
            Container(
              width: 390,
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
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: indigo,
                    fontFamily: 'RobotoCondenced',
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            // Buttons
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 390,
                  height: 60,
                  decoration: BoxDecoration(
                    color: bermuda,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: CupertinoButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 20,
                        color: black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 18,
                      color: white,
                    ),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, "/");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
