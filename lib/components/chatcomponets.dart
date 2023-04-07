


import 'package:chat_app_flutter/consts/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget chatComponents(){
  return Container(
    child: ListView.builder(
      physics: BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context,index){
          return ListTile(
            leading:CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 25,
                child: Image.network('https://m.media-amazon.com/images/M/MV5BZDk1ZmU0NGYtMzQ2Yi00N2NjLTkyNWEtZWE2NTU4NTJiZGUzXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_QL75_UY207_CR3,0,140,207_.jpg',)) ,
            title:Text('Dummy name') ,
            subtitle: Text('message here'),
            trailing: Text('Last seen'),

          );

    }),
  );
}