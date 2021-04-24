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
        backgroundColor: cornFlowerBlue,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
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
                    hintText: 'Mobile Number',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 20, bottom: 5),
                child: Text(
                  'To Account',
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
                    hintText: 'Hamro Bank',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 20, bottom: 5),
                child: Text(
                  'From Account',
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
              Padding(
                padding: EdgeInsets.only(top: 30, left: 20, bottom: 5),
                child: Text(
                  'Remarks',
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
                    hintText: 'Optional',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                      color: monteCarlo,
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
                      color: monteCarlo,
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
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
