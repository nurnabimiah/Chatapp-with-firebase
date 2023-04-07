import 'package:chat_app_flutter/consts/strings.dart';
import 'package:chat_app_flutter/screens/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatAppScreen extends StatefulWidget {
  const ChatAppScreen({Key? key}) : super(key: key);

  @override
  State<ChatAppScreen> createState() => _ChatAppScreenState();
}

class _ChatAppScreenState extends State<ChatAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Expanded(
                flex: 1,
                child: Container(

                  child: Column(
                    children: [
                      CircleAvatar(child: Icon(Icons.call,)),
                      appname.text.size(20).make()
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      children:List.generate(listOfFeatures.length, (index) {
                        return Chip(
                            backgroundColor: Colors.transparent,
                            label: "${listOfFeatures[index]}".text.make());
                      }),
                    ),
                    SizedBox(height: 20,),
                    Text(slogan,style: TextStyle(fontSize: 25),)
                    
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        Get.to(()=>VerificationScreen(),transition: Transition.downToUp);
                      }, child: Text('Start Meassaging'))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
