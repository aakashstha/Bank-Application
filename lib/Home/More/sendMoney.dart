import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class SendMoney extends StatefulWidget {
  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  TextEditingController _amountController = TextEditingController();
  TextEditingController _otherAccountController = TextEditingController();
  TextEditingController _accountNameController = TextEditingController();
  TextEditingController _bankNameController = TextEditingController();
  TextEditingController _myAccountController = TextEditingController();
  TextEditingController _remarksController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightSlateBlue,
        title: Text(
          'Send Money',
          style: TextStyle(fontSize: 18),
        ),
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
                controller: _amountController,
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
                controller: _otherAccountController,
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
                controller: _accountNameController,
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
                controller: _bankNameController,
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
                controller: _myAccountController,
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
                controller: _remarksController,
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
                    onPressed: () {
                      alertDialog(context);
                    },
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  child: Text(
                    "Clear",
                    style: TextStyle(
                      fontSize: 18,
                      color: white,
                    ),
                  ),
                  onPressed: () {
                    _amountController.clear();
                    _otherAccountController.clear();
                    _accountNameController.clear();
                    _bankNameController.clear();
                    _myAccountController.clear();
                    _remarksController.clear();
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

  void alertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      backgroundColor: white,
      title: Center(
        child: Text(
          "CONFIRM",
          style: TextStyle(
              fontSize: 30,
              color: indigo,
              fontFamily: 'Arial_Rounded',
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        ),
      ),
      content: Text(
        "Are you sure you want to send money to this account. This process cannot be undo.",
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
            Navigator.pop(context);
            Navigator.pop(context);
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
