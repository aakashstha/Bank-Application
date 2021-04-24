import 'package:flutter/material.dart';

import 'package:bank_application/afterSignUp.dart';
import 'package:bank_application/atm.dart';
import 'package:bank_application/helpDesk.dart';
import 'package:bank_application/home.dart';
import 'package:bank_application/more.dart';
import 'package:bank_application/news.dart';
import 'package:bank_application/payment1.dart';
import 'package:bank_application/payment2.dart';
import 'package:bank_application/scanToPay1.dart';
import 'package:bank_application/scanToPay2.dart';
import 'package:bank_application/sendMoney.dart';
import 'package:bank_application/themeColors.dart';
import 'package:bank_application/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of this application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank Application',
      theme: ThemeData(
        scaffoldBackgroundColor: cornFlowerBlue,
      ),
      routes: <String, WidgetBuilder>{
        '/login': (context) => Login(),
        '/afterSignUp': (context) => AfterSignUp(),
        '/home': (context) => Home(),
        '/atm': (context) => ATM(),
        '/news': (context) => News(),
        '/more': (context) => More(),
        '/sendMoney': (context) => SendMoney(),
        '/payment1': (context) => Payment1(),
        '/payment2': (context) => Payment2(),
        '/scanToPay1': (context) => ScanToPay1(),
        '/scanToPay2': (context) => ScanToPay2(),
        '/helpDesk': (context) => HelpDesk(),
      },
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
