import 'package:expenses/model/bankcardmodel.dart';
import 'package:expenses/widgets/expensebank/expenseinfo.dart';
import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  List<BankCardModel> placesList = [
    BankCardModel(
        img:
            "https://cdn.pixabay.com/photo/2018/04/25/17/07/flower-3350053_960_720.jpg",
        bankname: "NIBL",
        amount: "RS 43,000",
        amountdetails: " Rs 2000 this month"),
    BankCardModel(
        img:
            "https://cdn.pixabay.com/photo/2022/12/02/21/20/blue-7631674_640.jpg",
        bankname: "eSewa",
        amount: "RS 8,000",
        amountdetails: " Rs 3200 this month"),
    BankCardModel(
        img:
            "https://cdn.pixabay.com/photo/2023/03/08/10/11/crocuses-7837426_1280.jpg",
        bankname: "NIBL",
        amount: "RS 43,000",
        amountdetails: " Rs 2000 this month"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Current Balance',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: placesList.map((BankCardModel el) {
                return ExpenseInfo(place: el);
              }).toList()),
            ),
          )
        ],
      ),
    );
  }
}
