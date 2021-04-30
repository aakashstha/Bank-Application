import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class HelpDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightSlateBlue,
        title: Text(
          'Help Desk',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),

                // Main Info for Help Desk
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
                      SizedBox(height: 40),
                      mainInfo(Icons.location_on_rounded,
                          'Glory Tower, Radhe-Radhe,\nBhaktapur'),
                      mainInfo(Icons.phone_rounded,
                          '+ 977-1-5970101,\n+ 977-1-5111180'),
                      mainInfo(Icons.email_rounded, 'info@hamrobank.com'),
                      Container(
                        padding: EdgeInsets.only(left: 20, bottom: 20),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              './images/telephone.svg',
                              width: 30,
                              height: 30,
                              color: lightSlateBlue,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '1660-01-77771',
                              style: TextStyle(
                                fontSize: 20,
                                color: indigo,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Arial_Rounded',
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // other contact details
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 15),
                  child: Text(
                    'Other contact details',
                    style: TextStyle(
                        color: white,
                        fontSize: 26,
                        fontFamily: 'Arial_Rounded',
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                ),
                otherContactDetails('Radhe, Radhe, Bhaktapur', '9876767877'),
                otherContactDetails('Suryabinayak, Bhaktapur', '9876767889'),
                otherContactDetails('Thapathali, Kathmndu', '9876767899'),
                otherContactDetails('Baneshwor, Kathmandu', '9876767888'),
                otherContactDetails('pulchowk, Lalitpur', '9876767879'),
                otherContactDetails('Lagankhel, Lalitpur', '9876767872'),
                SizedBox(height: 36),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget otherContactDetails(String title, String subTitle) {
    return Container(
      width: 390,
      padding: EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: ListTile(
            leading: Icon(
              Icons.phone_rounded,
              size: 30,
              color: lightSlateBlue,
            ),
            title: Text(
              title,
              style: TextStyle(
                color: indigo,
                fontSize: 22,
                fontFamily: 'Arial_Rounded',
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              subTitle,
              style: TextStyle(
                color: indigo,
                fontWeight: FontWeight.w700,
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

  Widget mainInfo(IconData icon, String info) {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: lightSlateBlue,
            size: 30,
          ),
          SizedBox(width: 10),
          Text(
            info,
            style: TextStyle(
              fontSize: 20,
              color: indigo,
              fontWeight: FontWeight.w500,
              fontFamily: 'Arial_Rounded',
            ),
          )
        ],
      ),
    );
  }
}
