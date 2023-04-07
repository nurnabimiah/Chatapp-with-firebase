
import 'package:chat_app_flutter/consts/colors.dart';
import 'package:chat_app_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Profile '),),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              child: Stack(
                children: [
                  Icon(Icons.person,color: Colors.red.withOpacity(1),size: 60,),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 60,
                    bottom: 90,


                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.camera_alt,size: 20,color: Colors.red,),
                    ),
                  )

                ],
              ),
            ),
            18.heightBox,

            Divider(height: 1,color: Colors.red,),

            18.heightBox,

            ListTile(
              leading:Icon(Icons.person,color: Colors.white,) ,
              title: TextFormField(


                decoration: InputDecoration(
                    suffixIcon: Icon(
                        Icons.edit
                    ),
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true,
                  labelStyle: TextStyle(

                  ),
                  label:Text('name')
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text('This is not your username or pin. This name will be visible to your quick chats',style: TextStyle(color: Colors.white),),
              ),
            ),
            ListTile(
              leading:Icon(Icons.info,color: Colors.white,) ,
              title: TextFormField(

                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.edit
                    ),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                    labelStyle: TextStyle(

                    ),
                    label:Text('About')
                ),
              ),

            ),
            ListTile(
              leading:Icon(Icons.call,color: Colors.white,) ,
              title: TextFormField(
                readOnly: true,

                decoration: InputDecoration(
                    suffixIcon: Icon(
                        Icons.edit
                    ),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                    labelStyle: TextStyle(

                    ),
                    label:Text('Phone')
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
