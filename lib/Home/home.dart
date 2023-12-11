import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              Align(
                child: Container(
                  padding: EdgeInsetsDirectional.only(top: 24, bottom: 40),
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('./images/aakashPic.JPG'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                width: 390,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
              
                    // your account to show
                    Container(
                      child: Column(
                        children: [
                          infoUnderlined('Your Account', 22),
                          SizedBox(
                            height: 10,
                          ),
                          infoUnderlined('NPR. 29,221', 50),
                        ],
                      ),
                    ),
              
                    // Others Information
                    Container(
                      width: 390,
                      padding: EdgeInsets.only(left: 10, top: 40, bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          info('Aakash Shrestha  - Saving Acount', 21),
                          SizedBox(
                            height: 10,
                          ),
                          info('A/C Number = 1876987435627162', 21),
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
                    SizedBox(height: 20)
                  ],
                ),
              ),
              // Information
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 15),
                child: infoUnderlined('Information', 26, color: white),
              ),
              infoSection(Icons.cancel_outlined, 'Your credit-card is blocked.',
                  'You can unblock it anytime.'),
              SizedBox(
                height: 5,
              ),
              infoSection(Icons.lock_open, 'Your password is weak.',
                  'Make it strong ASAP.'),

              // Transaction History
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 15),
                child: infoUnderlined('Transaction History', 26, color: white),
              ),
              historySection('Dec 10, 2020', 'Transfer In', 'Rs. 6,000'),
              historySection('Jan 18, 2021', 'ATM  Exchange', 'Rs. 8,000'),
              historySection('Feb 15, 2021', 'From ATM', 'Rs. 2,000',
                  svgPath: 'images/downArrow.svg', color: red),
              historySection('Mar 29, 2021', 'TFrom bank end', 'Rs. 6,000'),
              historySection('Apr 14, 2021', 'From bank checkbook', 'Rs. 1,000',
                  svgPath: 'images/downArrow.svg', color: red),
              SizedBox(height: 40)
            ],
          ),
        ],
      ),
    );
  }

  Widget historySection(String title, String subTitle, String trailTitle,
      {String svgPath = 'images/upArrow.svg', Color color = green}) {
    return Container(
      width: 390,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: ListTile(
            leading: SvgPicture.asset(
              svgPath,
              width: 30,
              height: 30,
              color: color,
            ),
            trailing: Text(
              trailTitle,
              style: TextStyle(
                  fontSize: 22, color: indigo, fontFamily: 'Arial_Rounded'),
            ),
            title: info(title, 22),
            subtitle: Text(
              subTitle,
              style: TextStyle(
                color: grey,
                fontFamily: 'RobotoCondenced',
              ),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget infoSection(IconData icon, String title, String subTitle) {
    return Container(
      width: 390,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: ListTile(
            leading: Icon(
              icon,
              size: 40,
              color: grey,
            ),
            title: info(title, 22),
            subtitle: Text(
              subTitle,
              style: TextStyle(
                color: grey,
                fontFamily: 'RobotoCondenced',
              ),
            ),
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

  Widget infoUnderlined(String data, double fontSize, {Color color = indigo}) {
    return Text(
      data,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: 'Arial_Rounded',
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline),
    );
  }
}
