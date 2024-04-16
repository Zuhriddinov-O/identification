import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:identify/class.dart';
import 'package:identify/info_page.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool correct = false;
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    var surName = TextEditingController();
    var parentalName = TextEditingController();
    var phoneNumber = TextEditingController();
    var email = TextEditingController();
    var approvalDays = TextEditingController();
    var position = TextEditingController();
    var eduPosition = TextEditingController();

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    String nameText = "";
    String surNameText = "";
    String parentalNameText = "";
    String phoneNumberText = "";
    String emailText = "";
    String approvalDaysText = "";
    String positionText = "";
    String eduPositionText = "";

    return Scaffold(
      backgroundColor: Color(0xff333355),
      appBar: AppBar(centerTitle: true, title: const Text("My Client")),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 10),
            child: const Text("Lavozimi_",
                style: TextStyle(color: CupertinoColors.white, fontSize: 17)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 3),
            child: SizedBox(
              height: height * 0.06,
              child: CupertinoTextField(
                onChanged: (value) {
                  positionText = value;
                },
                controller: position,
                textCapitalization: TextCapitalization.words,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 5),
            child: const Text("Familiya_",
                style: TextStyle(color: CupertinoColors.white, fontSize: 17)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 2),
            child: SizedBox(
              height: height * 0.06,
              child: CupertinoTextField(
                onChanged: (value) {
                  surNameText = value;
                  print(surNameText);
                },
                controller: surName,
                textCapitalization: TextCapitalization.words,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 5),
            child: const Text("Ism_", style: TextStyle(color: CupertinoColors.white, fontSize: 17)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 2),
            child: SizedBox(
              height: height * 0.06,
              child: CupertinoTextField(
                onChanged: (value) {
                  nameText = value;
                  print(nameText);
                },
                controller: name,
                textCapitalization: TextCapitalization.words,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 5),
            child: const Text("Sharifi_",
                style: TextStyle(color: CupertinoColors.white, fontSize: 17)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 2),
            child: SizedBox(
              height: height * 0.06,
              child: CupertinoTextField(
                onChanged: (value) {
                  parentalNameText = value;
                  print(parentalNameText);
                },
                controller: parentalName,
                textCapitalization: TextCapitalization.words,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 5),
            child: const Text("Ilmiy darajasi_",
                style: TextStyle(color: CupertinoColors.white, fontSize: 17)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 2),
            child: SizedBox(
              height: height * 0.06,
              child: CupertinoTextField(
                onChanged: (value) {
                  eduPositionText = value;
                  print(eduPositionText);
                },
                controller: eduPosition,
                textCapitalization: TextCapitalization.words,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 5),
            child: const Text("Telefon raqami_",
                style: TextStyle(color: CupertinoColors.white, fontSize: 17)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 2),
            child: SizedBox(
              height: height * 0.06,
              child: CupertinoTextField(
                onChanged: (value) {
                  phoneNumberText = value;
                  print(phoneNumberText);
                },
                controller: phoneNumber,
                textCapitalization: TextCapitalization.words,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 5),
            child: const Text("Elektron pochtasi_",
                style: TextStyle(color: CupertinoColors.white, fontSize: 17)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 2),
            child: SizedBox(
              height: height * 0.06,
              child: CupertinoTextField(
                onChanged: (value) {
                  emailText = value;
                  print(emailText);
                },
                controller: email,
                textCapitalization: TextCapitalization.words,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 5),
            child: const Text("Qabul kunlari_",
                style: TextStyle(color: CupertinoColors.white, fontSize: 17)),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, bottom: 10),
            child: SizedBox(
              height: height * 0.06,
              child: CupertinoTextField(
                onChanged: (value) {
                  approvalDaysText = value;
                  print(approvalDaysText);
                },
                controller: approvalDays,
                textCapitalization: TextCapitalization.words,
              ),
            ),
          ),
          // _selectedImage != null
          //     ? Image.file(_selectedImage!)
          //     : Padding(
          //   padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          //   child: const Text("shaxsiy rasmingiz joylashtirilmadi",style: TextStyle(color: CupertinoColors.white),),
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
            child: ElevatedButton(
                onPressed: () {
                  _gallery();
                },
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))))),
                child: const Text("Rasm olish")),
          ),

          Padding(
            padding:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05, bottom: height * 0.01),
            child: ElevatedButton(
                onPressed: () {
                  if (nameText.isNotEmpty == true &&
                      surNameText.isNotEmpty == true &&
                      parentalNameText.isNotEmpty == true &&
                      phoneNumberText.isNotEmpty == true &&
                      emailText.isNotEmpty == true &&
                      approvalDaysText.isNotEmpty == true &&
                      positionText.isNotEmpty == true &&
                      eduPositionText.isNotEmpty == true) {
                    correct = true;
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => InfoPage(
                          identify: Identify(
                              name: nameText,
                              surname: surNameText,
                              parentalName: parentalNameText,
                              phoneNumber: phoneNumberText,
                              email: emailText,
                              approvalDays: approvalDaysText,
                              position: positionText,
                              eduPosition: eduPositionText,
                              image: kIsWeb ? null : _selectedImage),
                        ),
                      ),
                    );
                  }
                },
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))))),
                child: const Text("Keyingisi")),
          ),
        ],
      ),
    );
  }

  Future _gallery() async {
    final returnImage = ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _selectedImage = File(returnImage.toString());
    });
  }
}
