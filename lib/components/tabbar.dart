

 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget tabbar(){
  return Container(
   child: RotatedBox(
     quarterTurns: 3,

     child: TabBar(
       labelColor:Colors.white ,
       labelStyle: TextStyle(fontWeight: FontWeight.w600),
       unselectedLabelColor: Colors.grey,
       indicator: BoxDecoration(),

       tabs: [
       Tab(text: 'Chat',),
       Tab(text: 'Status',),
       Tab(text: 'Camera',),
     ],),
   ),
  );

}