import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class ATM extends StatefulWidget {
  @override
  _ATMState createState() => _ATMState();
}

class _ATMState extends State<ATM> {
  String _chosenValue = "Radhe Radhe";
  String _message = '';

  @override
  Widget build(BuildContext context) {
    List<String> _atmLocation = [
      'Radhe Radhe',
      'Koteshwor',
      'Naxal',
      'Chabahil',
      'Singha Durbar'
    ];
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              SizedBox(height: 170),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text(
                      'Choose ATM near you',
                      style: TextStyle(
                        fontSize: 22,
                        color: white,
                        fontFamily: 'Arial_Rounded',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 80),
                child: Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: DropdownButton<String>(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: indigo,
                          size: 60,
                        ),
                      ),
                      value: _chosenValue,
                      style: TextStyle(color: Colors.black),
                      items: _atmLocation
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoCondenced',
                              color: indigo,
                            ),
                          ),
                        );
                      }).toList(),
                      hint: Text(
                        'Choose ATM',
                        style: TextStyle(
                            color: indigo,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _chosenValue = value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: bermuda,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CupertinoButton(
                  child: Text(
                    "Connect",
                    style: TextStyle(
                      fontSize: 22,
                      color: black,
                    ),
                  ),
                  onPressed: () {
                    if (_chosenValue == null) {
                      setState(() {
                        _message =
                            "Choose the nearby ATM machine from the drop-down above.";
                      });
                    } else {
                      setState(() {
                        _message = '';
                      });
                      alertDialog(context);
                    }
                  },
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  _message,
                  style: TextStyle(
                    fontSize: 20,
                    color: white,
                    fontFamily: 'Arial_Rounded',
                  ),
                ),
              )
            ],
          ),
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
        child: CircularProgressIndicator(),
      ),
      content: Text(
        "We are connecting to the ATM machine. Please be patient and wait for a while.",
        style: TextStyle(
          fontSize: 16,
          color: indigo,
        ),
      ),
      actions: [
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Center(child: Text('Cancel Process')),
          ),
        ),
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
