import 'package:bank_application/themeColors.dart';
import 'package:flutter/material.dart';

class AfterSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 126),
        child: Container(
          width: 374,
          height: 570,
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
                    fontSize: 44,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(
                height: 56,
              ),
              Text(
                '🙏',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 56,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'The signup process cannot be done in the mobile itself you have to reach our branch which may located near you or in the respective area and the help desk there will guide you throuht the banking process and finally you can login to our system.',
                  style: TextStyle(
                    fontSize: 24,
                    color: black,
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
