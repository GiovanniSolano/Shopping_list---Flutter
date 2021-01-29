import 'package:flutter/material.dart';

class MyFieldForm extends StatelessWidget {
  String title;
  bool isPassword;

  MyFieldForm({this.title, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true),
            ),
          )
        ],
      ),
    );
  }
}
