import 'package:flutter/material.dart';

class Veg extends StatelessWidget {
  final Color c;
  Veg({this.c});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14,
      width: 14,
      decoration: BoxDecoration(border:Border.all(color:c),color: Colors.white),
      child: Center(child: Container(height: 5,width:5,decoration: BoxDecoration(borderRadius: BorderRadius.circular(0.5),color: c),)),
      
    );
  }
}