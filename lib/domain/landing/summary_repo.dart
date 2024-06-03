import 'dart:convert';

import 'package:expenses/domain/landing/summary_model.dart';
import 'package:expenses/plugins/http.dart';


  Future<SummaryModel> loadSummaryData() async{
    final res = await GetRequest('summary');
    print (jsonDecode(res.body));
    final temp = jsonDecode(res.body)['data']; 

    return SummaryModel(
      expenses:temp['expenses'],
      income: temp['income'],
      openingBalance: temp['openingBalance'],
      maxExpense: temp['maxExpense'],
      totalTransactionsThisMonth:temp['totalTransactionsThisMonth'],
    );
    
    
     }