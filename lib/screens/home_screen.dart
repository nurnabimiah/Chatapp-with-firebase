
import 'package:chat_app_flutter/components/appbar.dart';
import 'package:chat_app_flutter/components/drawer.dart';
import 'package:chat_app_flutter/components/tabbar.dart';
import 'package:chat_app_flutter/components/tabbar_view.dart';
import 'package:chat_app_flutter/consts/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final scaffolkey = GlobalKey<ScaffoldState>();



    return SafeArea(

      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: scaffolkey,
          drawer: drawer(),
          floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
          backgroundColor: bgColor,
          body: Column(
           children: [
             appbar(scaffolkey),
             Expanded(
               child: Row(
                 children: [
                   tabbar(),
                   tabbarView(),
                 ],
               ),
             ),
           ],
          ),

        ),
      ),
    );
  }
}
