import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/plugins/local_shared_preferences.dart';
import 'package:expenses/screens/transaction/addtransaction.dart';
import 'package:expenses/widgets/expensebank/Expensecard.dart';
import 'package:expenses/widgets/landing/summary_accounts.dart';
import 'package:expenses/widgets/landing/summary_home.dart';
import 'package:expenses/widgets/landing/summary_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../splash_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> logoutUser() async {
    await setTokenToBlank();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        child: Column(
          children: [
            SummaryHome(),
            SummaryAccount(),
            SummaryTransaction(),
            Container(
               
                )
          ],
        ),
      ),
      Positioned(
        bottom: 16.0,
        right: 16.0,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddTranscation()),
            );
          },
           backgroundColor: Colors.orange,
          tooltip: 'Navigate',
          child: Icon(Icons.add),
           shape: CircleBorder(),
        ),
      ),
    ]);
  }
}