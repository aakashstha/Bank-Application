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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsetsDirectional.only(top: 50),
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('./images/hamroBank.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
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
                    prefixIcon: Icon(
                      Icons.phone_iphone,
                      color: cornFlowerBlue,
                    ),
                    hintText: 'Mobile Number',
                    border: InputBorder.none),
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
                    prefixIcon: Icon(
                      Icons.vpn_key_rounded,
                      color: cornFlowerBlue,
                    ),
                    hintText: 'Password',
                    border: InputBorder.none),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: monteCarlo,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CupertinoButton(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 24,
                      color: black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/signUp");
                  },
                ),
              ),
              SizedBox(
                width: 26,
              ),
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: monteCarlo,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CupertinoButton(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 24,
                      color: black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/navigation");
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: 24,
                color: white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
