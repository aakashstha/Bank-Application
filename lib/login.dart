import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

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
              padding: EdgeInsetsDirectional.only(top: 50),
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('./images/hamroBank.png'),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          // Input Field
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 394,
              padding: EdgeInsets.symmetric(vertical: 6),
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
                  hintStyle: TextStyle(fontSize: 18),
                  border: InputBorder.none,
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
              padding: EdgeInsets.symmetric(vertical: 6),
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
                    hintStyle: TextStyle(fontSize: 18),
                    border: InputBorder.none),
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
            height: 20,
          ),
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
                    fontSize: 18,
                    color: white,
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
