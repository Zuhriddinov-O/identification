import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
      backgroundColor: const Color(0xff333355),
      appBar: AppBar(centerTitle: true, title: const Text("My Client")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kIsWeb
                    ? Center(child: FlutterLogo(size: MediaQuery.of(context).size.width * 0.45))
                    : Center(
                        child: Image.file(
                          widget.identify.image ?? File(""),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.45,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                const Gap(10),
                Table(
                  border: TableBorder.all(width: 2, color: CupertinoColors.systemGrey),
                  children: [
                    TableRow(
                        decoration: const BoxDecoration(color: CupertinoColors.white),
                        children: [
                          const TableCell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 3),
                              child:
                                  Text("Lavozimi", style: TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(widget.identify.position ?? "",
                                  style: const TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                        ]),
                    TableRow(
                        decoration: const BoxDecoration(color: CupertinoColors.white),
                        children: [
                          const TableCell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Text("Familiyasi",
                                  style: TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(widget.identify.surname ?? "",
                                  style: const TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                        ]),
                    TableRow(
                        decoration: const BoxDecoration(color: CupertinoColors.white),
                        children: [
                          const TableCell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text("Ismi", style: TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(widget.identify.name ?? "",
                                  style: const TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                        ]),
                    TableRow(
                        decoration: const BoxDecoration(color: CupertinoColors.white),
                        children: [
                          const TableCell(
                              child: Padding(
                            padding: EdgeInsets.only(left: 3.0),
                            child: Text("Sharifi", style: TextStyle(color: CupertinoColors.black)),
                          )),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(widget.identify.parentalName ?? "",
                                  style: const TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                        ]),
                    TableRow(
                        decoration: const BoxDecoration(color: CupertinoColors.white),
                        children: [
                          const TableCell(
                              child: Padding(
                            padding: EdgeInsets.only(left: 3.0),
                            child: Text("Ilmiy Darajasi",
                                style: TextStyle(color: CupertinoColors.black)),
                          )),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(widget.identify.eduPosition ?? "",
                                  style: const TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                        ]),
                    TableRow(
                        decoration: const BoxDecoration(color: CupertinoColors.white),
                        children: [
                          const TableCell(
                              child: Padding(
                            padding: EdgeInsets.only(left: 3.0),
                            child: Text("Telefon Raqami",
                                style: TextStyle(color: CupertinoColors.black)),
                          )),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(widget.identify.phoneNumber ?? "",
                                  style: const TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                        ]),
                    TableRow(
                        decoration: const BoxDecoration(color: CupertinoColors.white),
                        children: [
                          const TableCell(
                              child: Padding(
                            padding: EdgeInsets.only(left: 3.0),
                            child: Text("Elektron Pochtasi",
                                style: TextStyle(color: CupertinoColors.black)),
                          )),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(widget.identify.email ?? "",
                                  style: const TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                        ]),
                    TableRow(
                        decoration: const BoxDecoration(color: CupertinoColors.white),
                        children: [
                          const TableCell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text("Qabul Kunlari",
                                  style: TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(widget.identify.approvalDays ?? "",
                                  style: const TextStyle(color: CupertinoColors.black)),
                            ),
                          ),
                        ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
