import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/plugins/local_shared_preferences.dart';
import 'package:expenses/widgets/expensebank/Expensecard.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange, // Set your

          title: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/logo.png',
                        height: 50, fit: BoxFit.cover),
                  ],
                ),
                Icon(Icons.search),
              ],
            )
          ]),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              'Current Balance',
              style: TextStyle(fontSize: 24),
            ),
            Card(
              elevation: 2,
              margin: EdgeInsets.only(top: 30),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Income'),
                    Text('Total Expense'),
                  ],
                ),
              ),
            ),
            ExpenseCard(),
          ],
        )));
  }
}
