import 'dart:convert';

import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/domain/transaction/transcation_model.dart';
import 'package:expenses/domain/transaction/transcation_repo.dart';
import 'package:expenses/plugins/http.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SummaryTransaction extends StatefulWidget {
  const SummaryTransaction({super.key});

  @override
  State<SummaryTransaction> createState() => _SummaryTransactionState();
}

class _SummaryTransactionState extends State<SummaryTransaction> {
  List<TransactionModel> transactions = [];

  @override
  void initState() {
    loadData();
  }

  Future<void> loadData() async {
    List<TransactionModel> res = await loadTransactionData();
    setState(() {
      transactions = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // color:Colors.red,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child:
                Text('Recent Transaction', style: TypoStyles().kSectionHeader),
          ),
          
          Container(
            child: Column(
              children: transactions
                  .map(
                    (transaction) => ListTile(
                      title: Text(transaction.title),
                      subtitle: Text(DateFormat.yMMMd()
                          .format(DateTime.parse(transaction.createdAt))),
                      trailing: Text('Nu. ${transaction.amount}',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: transaction.type == 'EXPENSE'
                                  ? Colors.red
                                  : Colors.green)),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
