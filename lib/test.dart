import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

class DropDownDemo extends StatefulWidget {
  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    List<String> _atmLocation = [
      'Radhe Radhe 1',
      'Radhe Radhe 2',
      'Koteshwor',
      'Naxal',
      'Chabahil',
      'Singha Durbar'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Text(
                'Choose ATM near you.',
                style: TextStyle(
                  fontSize: 22,
                  color: white,
                  fontFamily: 'Arial_Rounded',
                ),
              ),
              Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down_rounded,
                      color: indigo,
                      size: 60,
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
                    onChanged: (String value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    },
                  ),
                ),
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
                        fontSize: 24,
                        color: black,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_chosenValue == null) {
            print("good");
          } else {
            print('bad');
          }
        },
      ),
    );
  }
}
