import 'dart:convert';

import 'package:expenses/data/model/account/account_model.dart';
//import 'package:expenses/domain/landing/summary_model.dart';
import 'package:expenses/plugins/http.dart';


  Future<AccountModel> loadSummaryData() async{
    final res = await GetRequest('account/me');
    print (jsonDecode(res.body));
    final temp = jsonDecode(res.body)['data']; 

    return AccountModel(

      id:temp['id'],
      title:temp['title'],
      openingBalance: temp['openingBalance'],
      img: '',
     
     
    );
    
    
     }