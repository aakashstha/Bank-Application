import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class HelpDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help Desk',
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
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              width: 390,
              height: 357,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Head Office',
                    style: TextStyle(
                      color: indigo,
                      fontSize: 30,
                      fontFamily: 'Arial_Rounded',
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 40),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: lightSlateBlue,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Glory Tower, Radhe-Radhe,\nBhaktapur',
                          style: TextStyle(
                            fontSize: 20,
                            color: indigo,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Arial_Rounded',
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            info('Availabe Balance', 22),
                            SizedBox(
                              height: 10,
                            ),
                            info('Actual Balance', 22),
                            SizedBox(
                              height: 10,
                            ),
                            info('Interest  Rate', 22),
                            SizedBox(
                              height: 10,
                            ),
                            info('Accurated Interest', 22),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            info('NPR. 29,221', 22),
                            SizedBox(
                              height: 10,
                            ),
                            info('NPR. 25,221', 22),
                            SizedBox(
                              height: 10,
                            ),
                            info('4.5%', 22),
                            SizedBox(
                              height: 10,
                            ),
                            info('NPR. 492.07', 22)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget info(String data, double fontSize) {
    return Text(
      data,
      style: TextStyle(
        color: indigo,
        fontSize: fontSize,
        fontFamily: 'Arial_Rounded',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
