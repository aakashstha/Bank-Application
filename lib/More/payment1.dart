import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';

class Payment1 extends StatefulWidget {
  @override
  _Payment1State createState() => _Payment1State();
}

class _Payment1State extends State<Payment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: bermuda,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        child: Column(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              Container(
                color: white,
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/payment2");
                  },
                  title: Text('NTC TOPUP'),
                ),
              ),
              Container(
                color: white,
                child: ListTile(
                  title: Text('NCELL TOPUP'),
                  onTap: () {
                    Navigator.pushNamed(context, "/payment2");
                  },
                ),
              ),
              Container(
                color: white,
                child: ListTile(
                  title: Text('SMARTCELL TOPUP'),
                  onTap: () {
                    Navigator.pushNamed(context, "/payment2");
                  },
                ),
              ),
            ],
          ).toList(),
        ),
      ),
    );
  }
}
