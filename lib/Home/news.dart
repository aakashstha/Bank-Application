import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 25),
              Container(
                width: 390,
                height: 275,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),

                    // Share News
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hamro Bank \n-- Share',
                          style: TextStyle(
                              fontSize: 40,
                              color: indigo,
                              fontFamily: 'Arial_Rounded'),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),

                    // Share Table
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Table(
                        border: TableBorder.all(color: black, width: 0),
                        children: [
                          TableRow(
                            decoration: BoxDecoration(
                              color: black,
                            ),
                            children: [
                              TableCell(
                                child: SizedBox(
                                  height: 45,
                                  child: Center(
                                    child: Text(
                                      'Symbol',
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: SizedBox(
                                  height: 45,
                                  child: Center(
                                    child: Text(
                                      'LTP',
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: SizedBox(
                                  height: 45,
                                  child: Center(
                                    child: Text(
                                      'High',
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: SizedBox(
                                  height: 45,
                                  child: Center(
                                    child: Text(
                                      'Low',
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: SizedBox(
                                  height: 35,
                                  child: Center(
                                    child: Text(
                                      'HABA',
                                      style: TextStyle(
                                        color: black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: SizedBox(
                                  height: 35,
                                  child: Center(
                                    child: Text(
                                      '904',
                                      style: TextStyle(
                                        color: black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: SizedBox(
                                  height: 35,
                                  child: Center(
                                    child: Text(
                                      '910',
                                      style: TextStyle(
                                        color: black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: SizedBox(
                                  height: 35,
                                  child: Center(
                                    child: Text(
                                      '901',
                                      style: TextStyle(
                                        color: black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 15),
                child: Text(
                  'Other Notice of Bank',
                  style: TextStyle(
                      color: white,
                      fontSize: 26,
                      fontFamily: 'Arial_Rounded',
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
              ),
              noticeSection(
                  'Bank is close today due to some internal circumstances.'),
              noticeSection('Bank is looking for a professional photographer.'),
              noticeSection('Intern is availabel for the bachelor’s student.'),
              noticeSection('Bank is going to issue mutual fund this week.'),
              SizedBox(height: 50)
            ],
          ),
        ],
      ),
    );
  }

  Widget noticeSection(String title) {
    return Container(
      width: 390,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: ListTile(
            title: info(title, 22),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
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
