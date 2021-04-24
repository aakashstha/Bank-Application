import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(top: 50),
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('./images/aakashPic.JPG'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              width: 368,
              height: 316,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Aakash Shrestha - Saving Acount',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'A/C Number = 1876987435627162',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Availabe Balance ',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Actual Balance',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Interest  Rate',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Accurated Interest',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 48,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'NPR. 2,222',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'NPR. 3,222',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '4.5%',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'NPR. 92.07',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
