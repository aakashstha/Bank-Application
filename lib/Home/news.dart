import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24, left: 23),
      child: Container(
        width: 368,
        height: 623,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Hamro Bank \n-- Share',
                    style: TextStyle(
                      fontSize: 36,
                      color: white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Table(
                      border: TableBorder.all(color: black, width: 1),
                      children: [
                        TableRow(children: [
                          TableCell(
                            child: Center(
                              child: Text(
                                'Symbol',
                                style: TextStyle(
                                    color: white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Center(
                              child: Text(
                                'LTP',
                                style: TextStyle(
                                    color: white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Center(
                              child: Text(
                                'High',
                                style: TextStyle(
                                    color: white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Center(
                              child: Text(
                                'Low',
                                style: TextStyle(
                                    color: white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          TableCell(
                            child: Center(
                              child: Text(
                                'HABA',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Center(
                              child: Text(
                                '904',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Center(
                              child: Text(
                                '910',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Center(
                              child: Text(
                                '901',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Card(
              color: Colors.yellow,
              child: Container(
                width: 300,
                height: 150,
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'Bank is close today due to some internal circumstances.',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
