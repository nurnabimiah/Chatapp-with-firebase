import 'package:chat_app_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lets connect to",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'phone number',
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 5,),
            Text(
              'We will send an SMS with a confirmation code to your phone number',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            }, child: Text("Continue"))
          ],
        ),
      ),
    );
  }
}
