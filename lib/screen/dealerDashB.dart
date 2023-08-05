import 'package:flutter/material.dart';
import 'package:flipr/constants.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_auth/email_auth.dart';

class dealerDash extends StatelessWidget {
  const dealerDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _biggerFont = TextStyle(fontSize: 18.0);
    final user = FirebaseAuth.instance.currentUser;
    final materialNatureShow = TextField(
      obscureText: true,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nature of Material",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("FLiPR"),backgroundColor: Color(0xff01A0C7),),
        body: Container(
          child: Column(
            children: <Widget>[
              Text(user!.email.toString(),style: kLabelTextStyle,),
              SizedBox(height: 16.0,),
              materialNatureShow,
              SizedBox(height: 16.0,),
              Text("From",style: kLabelTextStyle,),
              CSCPicker(onCountryChanged: (value) {},
                onStateChanged:(value) {},
                onCityChanged:(value) {},),
              SizedBox(height: 16.0,),
              Text("To",style: kLabelTextStyle,),
              CSCPicker(onCountryChanged: (value) {},
                onStateChanged:(value) {},
                onCityChanged:(value) {},),
              ElevatedButton(onPressed: ()async{
                await FirebaseAuth.instance.signOut();
              }, child: Text("LogOut"))
            ],
          ),
        ),
      ),
    );
  }
}
