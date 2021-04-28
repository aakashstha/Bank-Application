import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class SendMoney extends StatefulWidget {
  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Send Money',
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
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40, left: 20, bottom: 5),
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
                  hintText: 'Eg: 100',
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, bottom: 5),
              child: Text(
                'To Account',
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
                  hintText: 'Account Number',
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, bottom: 5),
              child: Text(
                'Account Name',
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
                  hintText: 'Account Holder Name',
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, bottom: 5),
              child: Text(
                'Bank Name',
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
                  hintText: 'Hamro Bank',
                  hintStyle: TextStyle(
                    color: indigo,
                    fontFamily: 'RobotoCondenced',
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, bottom: 5),
              child: Text(
                'From Account',
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
                    color: indigo,
                    fontFamily: 'RobotoCondenced',
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, bottom: 5),
              child: Text(
                'Remarks',
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
                  hintText: 'Optional',
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
                    Navigator.pushNamed(context, "/logIn");
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
