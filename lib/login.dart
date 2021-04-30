import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Align(
            child: Container(
              padding: EdgeInsetsDirectional.only(top: 34, bottom: 40),
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('./images/hamroBank.png'),
              ),
            ),
          ),
          // Input Field
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 394,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 25, right: 10),
                    child: Icon(
                      Icons.phone_iphone,
                      color: lightSlateBlue,
                      size: 26,
                    ),
                  ),
                  hintText: 'Mobile Number',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 394,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 25, right: 10),
                    child: Icon(
                      Icons.vpn_key_rounded,
                      color: lightSlateBlue,
                      size: 24,
                    ),
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
          ),

          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: bermuda,
                borderRadius: BorderRadius.circular(15),
              ),
              child: CupertinoButton(
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 20,
                    color: black,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/navigation");
                },
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  TextButton(
                    child: Row(
                      children: [
                        Icon(
                          Icons.fingerprint,
                          color: white,
                          size: 35,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Tap to login with fingerprint",
                          style: TextStyle(
                            fontSize: 16,
                            color: white,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      alertDialog(context);
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: 180,
                      height: 80,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: TextButton(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, "/signUp");
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: TextButton(
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: white,
                                ),
                              ),
                              onPressed: () {
                                alertDialogForPassword(context);
                              },
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void alertDialogForPassword(BuildContext context) {
    var alertDialog = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      backgroundColor: white,
      title: Center(
        child: Text(
          'Pin to reset password',
          style: TextStyle(
            fontSize: 18,
            color: indigo,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      content: Text(
        'we will send pin and reset link to the mobile number to reset your password, kindly follow the instruction.',
        style: TextStyle(
          fontSize: 16,
          color: indigo,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            // Snack bar
            final snackBar = SnackBar(
              backgroundColor: black,
              content: Text(
                'Successfully Sent!! Check your message inbox.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Send'),
        )
      ],
    );
    showDialog(
      context: context,
      builder: (buildContext) {
        return alertDialog;
      },
    );
  }

  void alertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      backgroundColor: white,
      title: Center(
        child: SvgPicture.asset(
          './images/fingerPrint2.svg',
          width: 40,
        ),
      ),
      content: Container(
        height: 50,
        child: Column(
          children: [
            Text(
              'Touch ID for "Hamro Bank Mobile"',
              style: TextStyle(
                fontSize: 16,
                color: indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Use your biometric to proceed',
              style: TextStyle(
                fontSize: 14,
                color: indigo,
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        )
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
