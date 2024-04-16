import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:identify/class.dart';

class InfoPage extends StatefulWidget {
  InfoPage({super.key, required this.identify});

  Identify identify;

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333355),
      appBar: AppBar(centerTitle: true, title: const Text("My Client")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Lavozimi: ${widget.identify.position ?? ""}",
                        style: const TextStyle(fontSize: 20, color: CupertinoColors.white)),
                    Text("Familiyasi: ${widget.identify.surname ?? ""}",
                        style: const TextStyle(fontSize: 20, color: CupertinoColors.white)),
                    Text("Ismi: ${widget.identify.name ?? ""}",
                        style: const TextStyle(fontSize: 20, color: CupertinoColors.white)),
                    Text("Sharifi: ${widget.identify.parentalName ?? ""}",
                        style: const TextStyle(fontSize: 20, color: CupertinoColors.white)),
                    Text("Ilmiy Darajasi: ${widget.identify.eduPosition ?? ""}",
                        style: const TextStyle(fontSize: 20, color: CupertinoColors.white)),
                    Text("Telefon Raqami: ${widget.identify.phoneNumber ?? ""}",
                        style: const TextStyle(fontSize: 20, color: CupertinoColors.white)),
                    Text("Elektron Pochtasi: ${widget.identify.email ?? ""}",
                        style: const TextStyle(fontSize: 20, color: CupertinoColors.white)),
                    Text("Qabul Kunlari: ${widget.identify.approvalDays ?? ""}",
                        style: const TextStyle(fontSize: 20, color: CupertinoColors.white)),
                  ],
                ),
              ),
              kIsWeb
                  ? FlutterLogo(size: MediaQuery.of(context).size.width * 0.45)
                  : Image.file(
                      widget.identify.image ?? File(""),
                      width: MediaQuery.of(context).size.width * 0.04,
                      height: MediaQuery.of(context).size.height * 0.04,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
