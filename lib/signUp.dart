import 'package:bank_application/themeColors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
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
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 12),
        child: Container(
          width: 390,
          height: 535,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  'Sign Up Process',
                  style: TextStyle(
                    color: indigo,
                    fontSize: 46,
                    decoration: TextDecoration.underline,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                '🙏',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'The signup process cannot be done in the mobile itself you have to reach our branch which may located near you or in the respective area and the help desk there will guide you through the banking process and finally you can login to our system.',
                  style: TextStyle(
                    color: indigo,
                    fontSize: 24,
                    fontFamily: 'Arial',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
