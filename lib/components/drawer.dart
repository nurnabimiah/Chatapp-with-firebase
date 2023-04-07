

import 'package:chat_app_flutter/consts/colors.dart';
import 'package:chat_app_flutter/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

Widget drawer()
{
  return Drawer(
    backgroundColor: bgColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(25))
    ),
    child: Column(
      children: [
        ListTile(
          onTap: ((){
           Get.back();
          }),
          leading:Icon(Icons.arrow_back,color: Colors.white,) ,
          title:Text('Settings',style: TextStyle(color: Colors.white),) ,

        ),
        20.heightBox,
        CircleAvatar(
          radius: 45,
          backgroundColor: Colors.blue ,
          child: Icon(Icons.person,color: Colors.white,),
        ),
        10.heightBox,
        'Username'.text.white.make(),
        20.heightBox,
        Divider(color: Colors.blue,height: 1,),
        10.heightBox,
        ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              onTap: ((){
                Get.to(ProfileScreen());
              }),
              leading: Icon(Icons.account_balance,color: Colors.white),
              title:Text('Account',style: TextStyle(color: Colors.white),) ,
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.white),
                title:Text('Friends',style: TextStyle(color: Colors.white),)
            ),
            ListTile(
              leading: Icon(Icons.notification_add,color: Colors.white,),
                title:Text('Notification',style: TextStyle(color: Colors.white),)
            ),
            ListTile(
              leading: Icon(Icons.data_saver_on,color: Colors.white,),
                title:Text('Data and Storage',style: TextStyle(color: Colors.white),)
            ),
            ListTile(
              leading: Icon(Icons.help,color: Colors.white),
                title:Text('Help',style: TextStyle(color: Colors.white),)
            ),
            10.heightBox,
            ListTile(
                leading: Icon(Icons.share,color: Colors.white),
                title:Text('Invite Friends',style: TextStyle(color: Colors.white),)
            ),
            Spacer(),

            ListTile(
                leading: Icon(Icons.logout,color: Colors.white),
                title:Text('Logout',style: TextStyle(color: Colors.white),)
            ),




          ],
        )

      ],
    ),

  );
}