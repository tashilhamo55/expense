import 'dart:convert';

import 'package:expenses/data/model/account/account_model.dart';
import 'package:expenses/plugins/http.dart';



class AccountRepo {
  Future loadAccounts() async{
    final res = await GetRequest('account');
    print(jsonDecode(res.body));
    List<AccountModel> tempAccounts = [];
    for(final acc in jsonDecode(res.body)['data']){
      tempAccounts.add(AccountModel.fromJson(acc));
    }
    return tempAccounts;
  }


}
    Future loadAccountData() async{
    final res = await GetRequest('account/me');
    print(jsonDecode(res.body));
    List<AccountModel> tempAccounts = [];
    for(final acc in jsonDecode(res.body)['data']){
      tempAccounts.add(AccountModel.fromJson(acc));
    }
    return tempAccounts;
  }