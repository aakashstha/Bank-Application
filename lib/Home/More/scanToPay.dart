import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ScanToPay extends StatefulWidget {
  @override
  _ScanToPayState createState() => _ScanToPayState();
}

class _ScanToPayState extends State<ScanToPay> {
  bool share = true;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  File image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightSlateBlue,
        title: Text(
          'Pay or Share',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 12, top: 40),
        child: Container(
          width: 390,
          height: 582,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              // SizedBox(height: 10),
              // Main Box in this Page
              Container(
                width: 390,
                height: 520,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: share ? shareButton() : scanButton(),
              ),

              // Button line to indicate
              Row(
                mainAxisAlignment: mainAxisAlignment,
                children: [
                  Container(
                    width: 190,
                    height: 2,
                    color: lightSlateBlue,
                  ),
                ],
              ),
              // Buttons
              Row(
                children: [
                  Container(
                    width: 190,
                    height: 60,
                    decoration: BoxDecoration(
                      color: bermuda,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CupertinoButton(
                      child: Text(
                        "SHARE",
                        style: TextStyle(
                          fontSize: 20,
                          color: black,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          mainAxisAlignment = MainAxisAlignment.start;
                          share = true;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 190,
                    height: 60,
                    decoration: BoxDecoration(
                      color: bermuda,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CupertinoButton(
                      child: Text(
                        "SCAN",
                        style: TextStyle(
                          fontSize: 20,
                          color: black,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          mainAxisAlignment = MainAxisAlignment.end;
                          share = false;
                        });
                        getImage();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget shareButton() {
    return Column(
      children: [
        SizedBox(height: 10),
        Align(
          child: Container(
            padding: EdgeInsetsDirectional.only(top: 20, bottom: 10),
            width: 140,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('./images/aakashPic.JPG'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 10),
          child: Text(
            'Aakash Shrestha',
            style: TextStyle(
              fontSize: 40,
              color: indigo,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SvgPicture.asset(
          './images/qrCode.svg',
          width: 150,
          height: 150,
          color: black,
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Text(
            'What you are sharing: Your name, your photo, bank name and bank account number.',
            style: TextStyle(fontSize: 20, color: indigo),
          ),
        ),
        SizedBox(height: 38),
      ],
    );
  }

  Widget scanButton() {
    return Column(
      children: [
        Image.asset(
          './images/cameraView.png',
        ),
      ],
    );
  }
}
