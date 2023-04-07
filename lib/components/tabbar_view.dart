
import 'package:chat_app_flutter/components/chatcomponets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget tabbarView(){
  return Expanded(
    child: Container(
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))

      ),
      child: TabBarView(children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))

          ),
          child:chatComponents() ,

        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))

          ),

        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))

          ),

        ),

      ]),
    ),
  );
}