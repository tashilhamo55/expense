import 'package:expenses/domain/transaction/transcation_model.dart';
import 'package:expenses/domain/transaction/transcation_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({super.key});

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
    List<TransactionModel> transaction = [];

 @override
  void initState() {
    loadAccType();
  }

   Future<void> loadAccType() async {
    List<TransactionModel> res = await loadTransactionData();
    setState(() {
      transaction = res;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Center(
          child: ClipOval(
            child: Image.network(
              'https://cdn.pixabay.com/photo/2021/07/24/07/23/chow-chow-6488846_1280.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Account Name'),
          ),
        ),
       Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: DropdownButtonFormField<String>(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Account Type',
                      ),
                      onChanged: (value) {},
                      items: transaction.map<DropdownMenuItem<String>>(
                          (TransactionModel transactions) {
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
                border: OutlineInputBorder(), labelText: 'Opening Balance'),
          ),
        ),
        Align(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 150),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Confirm',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
