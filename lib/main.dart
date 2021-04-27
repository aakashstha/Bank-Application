import 'package:bank_application/test.dart';
import 'package:flutter/material.dart';

import 'package:bank_application/signUp.dart';
import 'package:bank_application/Home/atm.dart';
import 'package:bank_application/More/helpDesk.dart';
import 'package:bank_application/navigation.dart';
import 'package:bank_application/More/more.dart';
import 'package:bank_application/Home/news.dart';
import 'package:bank_application/More/payment1.dart';
import 'package:bank_application/More/payment2.dart';
import 'package:bank_application/More/scanToPay1.dart';
import 'package:bank_application/More/scanToPay2.dart';
import 'package:bank_application/More/sendMoney.dart';
import 'package:bank_application/themeColors.dart';
import 'package:bank_application/logIn.dart';

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
          scaffoldBackgroundColor: lightSlateBlue,
        ),
        routes: <String, WidgetBuilder>{
          '/logIn': (context) => Login(),
          '/signUp': (context) => SignUp(),
          // main pages in this application
          '/navigation': (context) => Navigation(),
          '/atm': (context) => ATM(),
          '/news': (context) => News(),
          '/more': (context) => More(),

          // Others
          '/sendMoney': (context) => SendMoney(),
          '/payment1': (context) => Payment1(),
          '/payment2': (context) => Payment2(),
          '/scanToPay1': (context) => ScanToPay1(),
          '/scanToPay2': (context) => ScanToPay2(),
          '/helpDesk': (context) => HelpDesk(),
        },
        home: Scaffold(
          body: Login(),
        ));
  }
}
