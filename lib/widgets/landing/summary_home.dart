import 'dart:async';

import 'package:expenses/domain/landing/summary_model.dart';
import 'package:expenses/domain/landing/summary_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SummaryHome extends StatefulWidget {
  const SummaryHome({super.key});

  @override
  State<SummaryHome> createState() => _SummaryHomeState();
}

class _SummaryHomeState extends State<SummaryHome> {
  SummaryModel summary = SummaryModel();

  @override
  void initState() {
    loadData();
  }

  Future<void> loadData() async {
    SummaryModel res = await loadSummaryData();
    setState(() {
      summary = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.blueAccent,
        height: 260,
        child: Stack(
          children: [
            Container(
              height: 165,
              color: Colors.redAccent,
            ),
            Align(
                alignment: Alignment.center,
                child: Container(
                  height: 250,
                  padding: EdgeInsets.all(16),
                  // color: Colors.red,
                  margin: EdgeInsets.only(bottom: 16),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        padding: EdgeInsets.all(8),
                        //color: Colors.white,
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          children: [
                            Text(
                              'Current Balance',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Text(
                              'Nu.' + summary.openingBalance.toString(),
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          // height: 120,
                          color: Colors.white,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.only(bottom: 16),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  // width: 200,
                                  // color: Colors.red,
                                  padding: EdgeInsets.all(4),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          // width: 60,
                                          //   color:Colors.lightBlue

                                          child: Center(
                                        child: (Icon(Icons.arrow_downward,
                                            size: 36)),
                                      )),
                                      Expanded(
                                        child: Container(
                                            // width: 120,
                                            // color: Colors.lightBlue,
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Total Expense',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              'Nu. ${summary.expenses}',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // width: 200,
                                  // color: Colors.red,
                                  padding: EdgeInsets.all(4),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          // width: 60,
                                          //   color:Colors.lightBlue

                                          child: Center(
                                        child: (Icon(Icons.arrow_upward,
                                            size: 36)),
                                      )),
                                      Expanded(
                                        child: Container(
                                            // width: 120,
                                            // color: Colors.lightBlue,
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Total Income',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              'Nu. ${summary.income}',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ))
          ],
        ));
  }
}
