import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

class IntrayToDo extends StatelessWidget {
  final String title;
  IntrayToDo({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 15,
        left: 15,
        right: 15,
      ),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: redAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: lightGrey.withOpacity(0.3),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Radio(
            activeColor: darkRed,
            groupValue: null,
            onChanged: (Null value) {},
            value: null,
          ),
          Column(
            children: <Widget>[
              Text(
                this.title,
                style: listTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
