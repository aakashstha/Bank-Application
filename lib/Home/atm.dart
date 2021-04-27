import 'package:bank_application/themeColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ATM extends StatefulWidget {
  @override
  _ATMState createState() => _ATMState();
}

class _ATMState extends State<ATM> {
  var _atmLocation = [
    'Choose ATM',
    'Radhe Radhe 1',
    'Radhe Radhe 2',
    'Koteshwor',
    'Naxal',
  ];
  var _currentItemSelected = 'Choose ATM';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 6),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                items: _atmLocation.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (String newValueSelected) {
                  _onDropDownItemSelected(newValueSelected);
                },
                value: _currentItemSelected,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                color: bermuda,
                borderRadius: BorderRadius.circular(40),
              ),
              child: CupertinoButton(
                child: Text(
                  "Connect",
                  style: TextStyle(
                      fontSize: 24, color: black, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
