import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () => runApp(MaterialApp(
  home: Login(),
));
class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page",
          style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
      ),

      body: Column(
        //direction: Axis.vertical,
        //runSpacing: 5.0,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 60.0,horizontal: 50.0),
            child: Row(
              children: [
                FlutterLogo(size: 85,),
                Text("Flutter", style: TextStyle(fontSize: 50.0,fontFamily: "Roboto",fontWeight: FontWeight.w100),)
              ],
            ),
          ),

          TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Email"),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0)),

          TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Password"),
          ),

          TextButton(
              style: TextButton.styleFrom(primary: Colors.blue,textStyle: TextStyle(fontSize: 13)),
              onPressed: (){}, child: Text("Forgot Password",
          )),

          Container(
            height: 60, width: 300,
            child: TextButton(
                style: TextButton.styleFrom(primary: Colors.white,backgroundColor: Colors.blue,textStyle: TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(15.0))),
                onPressed: (){}, child: Text("Login")),
          ),


        ],
      ),

    );
  }
}