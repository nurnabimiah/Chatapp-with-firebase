
import 'package:chat_app_flutter/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(22))),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: RichText(

                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Username\n',
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    TextSpan(
                        text: 'last seen',
                        style: TextStyle(fontSize: 12, color: Colors.black)),
                  ]),
                )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_call_rounded,
                      size: 24,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Expanded(
                      child: Icon(
                        Icons.call,
                        size: 24,
                      ),
                    ))
              ],
            ),
            30.heightBox,
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return Directionality(
                      textDirection: index.isEven ? TextDirection.rtl : TextDirection.ltr,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: index.isEven ? Colors.black : Colors.red,
                              child: Icon(Icons.person),
                            ),
                            20.widthBox,
                            Expanded(
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Container(
                                    padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: index.isEven ? bgColor : Colors.red,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                                    child: Text('Hello! this is a dummy message here...',style: TextStyle(color: Colors.white),),
                            ),
                                )),

                            10.widthBox,
                            Directionality(
                              textDirection: TextDirection.ltr,
                                child: '11:00 Am'.text.gray400.make()),
                           /* TextButton.icon(
                                label:'11:00 Am'.text.gray400.make(),
                                onPressed: (){},
                                icon: Icon(Icons.access_time_filled))*/
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            10.heightBox,
           /*Row(
             children: [
               Container(
                 decoration: BoxDecoration(
                   color: bgColor,
                   borderRadius: BorderRadius.circular(16)
                 ),
                 child:TextField(
                   decoration: InputDecoration(
                     hintText: 'Type your message'
                   ),
                 ),
               )
             ],
           )*/
            SizedBox(
              height:40 ,
              child: Row(
                children: [
                  Expanded(child: Container(
                    decoration: BoxDecoration(

    borderRadius: BorderRadius.circular(16)
                    ),
                    child: TextFormField(
                      maxLines: 2,

                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.emoji_emotions),
                        suffixIcon: Icon(Icons.attachment),
                        border: InputBorder.none,
                       hintText: 'Type message here....',
                        hintStyle: TextStyle(
                          fontSize: 14,

                        )

                      ),
                    ),
                  )),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.send,color: Colors.black,),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
