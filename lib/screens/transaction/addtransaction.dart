import 'package:expenses/data/model/account/account_model.dart';
import 'package:expenses/data/model/account/account_repo.dart';
import 'package:expenses/domain/transaction/transcation_model.dart';
import 'package:expenses/domain/transaction/transcation_repo.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTranscation extends StatefulWidget {
  const AddTranscation({super.key});

  @override
  State<AddTranscation> createState() => _AddTranscationState();
}

class _AddTranscationState extends State<AddTranscation> {
 
    List<AccountModel> accounts = []; 
    List<TransactionModel> transaction= [];  
  
  @override
  void initState(){
  loadData();
  loadDataTrans();
  }

Future<void> loadData() async{
  List<AccountModel> res =await loadAccountData();  
  setState(() {
    accounts = res;
  });
} 

Future<void> loadDataTrans() async{
  List<TransactionModel> res =await loadTransactionData();  
  setState(() {
    transaction = res;
  });
} 

  @override
  Widget build(BuildContext context) {

    //String selectedAccount;

    return Scaffold(
        appBar: AppBar(
          title: Text('Add Transaction'),
        ),
        body: Container(
            
          child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Statement'),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Date'),
                    ),
                  ),
                  
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Account',
                  ),
                  onChanged: (value) {
                    
                  },
                  items: accounts.map<DropdownMenuItem<String>>((AccountModel account) {
                    return DropdownMenuItem<String>(
                      value: account.title,
                      child: Text(account.title),
                    );
                  }).toList(),
                ),
              ),
                  
          Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Expenses',
                  ),
                  onChanged: (value) {
                    
                  },
                  items: transaction.map<DropdownMenuItem<String>>((TransactionModel transactions) {
                    return DropdownMenuItem<String>(
                      value: transactions.type,
                      child: Text(transactions.type),
                    );
                  }).toList(),
                ),
              ),

              Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Amount in Rs.'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Add image for the bill'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    // Background color
                  ),
                ),
              ),
            )
          ],
        )));
  }
}