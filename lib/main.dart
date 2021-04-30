import 'package:bank_application/Home/home.dart';
import 'package:bank_application/test.dart';
import 'package:flutter/material.dart';

import 'package:bank_application/signUp.dart';
import 'package:bank_application/Home/atm.dart';
import 'package:bank_application/Home/More/helpDesk.dart';
import 'package:bank_application/navigation.dart';
import 'package:bank_application/Home/More/more.dart';
import 'package:bank_application/Home/news.dart';
import 'package:bank_application/Home/More/payment.dart';
import 'package:bank_application/Home/More/topup.dart';
import 'package:bank_application/Home/More/scanToPay.dart';
import 'package:bank_application/Home/More/sendMoney.dart';
import 'package:bank_application/themeColors.dart';
import 'package:bank_application/logIn.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home/More/topup.dart';

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
        hintColor: grey,
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontSize: 16,
            fontFamily: 'RobotoCondenced',
          ),
        ),
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
        '/payment': (context) => Payment(),
        '/topup': (context) => TopUp(),
        '/scanToPay': (context) => ScanToPay(),
        '/helpDesk': (context) => HelpDesk(),
      },
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
