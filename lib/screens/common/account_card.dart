import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/data/model/account/account_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class AccountCard extends StatelessWidget {
AccountModel account;
AccountCard(this.account);

  @override
  Widget build(BuildContext context) {
    return Container(

        height: 180,
        width: 300,
        
        // color: Colors.blueAccent,
        margin: EdgeInsets.only(left: 16),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
         
       border: Border.all(
      width: 2, // Set the width of the border
    ),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(6),
                height: 50,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 4),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(account.title, style:TypoStyles().kSectionHeader),
                   
                    CircleAvatar(
                      backgroundImage: NetworkImage(account.img),
                    )
                    

                  ],
                ) ,
              ),
            ),
            Container(
              // height:50,
              // color:Colors.white,
              margin: EdgeInsets.only(bottom: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nu. ${account.openingBalance}',
                    style: TypoStyles().kPageHeader,
                  ),
                  Text(
                    'Balance',
                    style: TypoStyles().kSectionHeader,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
