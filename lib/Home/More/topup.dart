import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class TopUp extends StatefulWidget {

  @override
  _TopUpState createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  TextEditingController _amountController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightSlateBlue,
        title: Text(
          'Topup',
          style: TextStyle(fontSize: 18),
        ),
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
                controller: _amountController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Eg. Rs.100',
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
                controller: _numberController,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 15),
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
                controller: _accountNumberController,
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
                    _numberController.clear();
                    _accountNumberController.clear();
                  },
                ),
              ],
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
        "Are you sure you want to topup to this number. This process cannot be undo.",
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
