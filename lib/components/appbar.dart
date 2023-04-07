import 'package:chat_app_flutter/consts/strings.dart';
import 'package:flutter/material.dart';

Widget appbar() {
  return Container(
    height: 100,
    color: Colors.white,
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),

              )),
          height: 100,
          width: 100,
          child: Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
        Column(
          children: [
           Text(appname,style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.w600),),
            Text('connecting lives...'),
  
          ],
        ),
        Spacer(),
        CircleAvatar(
            child: Icon(Icons.person,color: Colors.black,)),
        SizedBox(width: 50,)
        
      ],
    ),
  );
}
