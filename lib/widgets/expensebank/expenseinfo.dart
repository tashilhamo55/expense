import 'package:flutter/material.dart';
import 'package:expenses/model/bankcardmodel.dart';

class ExpenseInfo extends StatelessWidget {
  final BankCardModel place;

  ExpenseInfo({required this.place});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 200,
        width: 300,
        margin: EdgeInsets.only(right: 8),
        child: Card(
          margin: EdgeInsets.only(top: 20),
          elevation: 2,
          color: Colors.white, // Background color of the card

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        place.bankname,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Image.network(
                      place.img,
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  place.amount,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  place.amountdetails,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    
  }
}
