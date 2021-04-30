import 'package:expandedorder/vegnon.dart';
import 'package:flutter/material.dart';

class CocaCola extends StatelessWidget {
  final String img;
  final Color c;
  final String pname;
  final String rs;
  final String price;
  final String litre;
  CocaCola({this.img, this.c,this.pname,this.rs,this.price,this.litre});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       height: 180,
       width: 140,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black),
       child: Column(children: [
         Container(
           height:146,
           width:140,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
             child: Column(children:[
               Row(children: [
                 Padding(
                   padding: const EdgeInsets.only(bottom: 73,left: 8),
                   child: Veg(c: c,),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: CircleAvatar(child:Image.asset(img),radius: 48,),
                 ),
               ],
               ),
               Text(pname,style: TextStyle(fontWeight: FontWeight.bold),)
             ]),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 20,top: 10),
           child: Row(children: [
             Text(rs,style: TextStyle(color: Color(0xffFFAA00),fontSize: 12),),
             Text(price,style: TextStyle(color: Colors.white,fontSize: 16),),
             Text(litre,style: TextStyle(color: Colors.white,fontSize: 14),)
           ],),
         )
       ],),
      ),
    );
  }
}
