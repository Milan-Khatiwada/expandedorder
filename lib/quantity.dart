import 'package:flutter/material.dart';


class Quantity extends StatelessWidget {
  final String num;
  Quantity({ this.num});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 15,width: 27,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color(0xffD5D5D5)),
            child: Center(child: Text(num, style: TextStyle(fontSize: 10,color: Colors.white)))));
  }
}
class Name extends StatelessWidget {
  final String name;
  Name({this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(name, style: TextStyle(fontSize: 14)),
      
    );
  }
}
