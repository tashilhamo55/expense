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
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          
          children: [
            Center(
              child: ClipOval(
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2021/07/24/07/23/chow-chow-6488846_1280.jpg',
                  width: 150,  // adjust the size as needed
                  height: 150, // adjust the size as needed
                  fit: BoxFit.cover,
                ),
              ),
            ),


          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
                  // controller: _username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Account Name'),
                ),
          ),


            Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
                  // controller: _username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Type'),
                ),
          ),



          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
                  // controller: _username,
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
                      // Background color
                    ),
                  ),
                ),
                           )
          
        ],

          
        )
      
    );
  }
}