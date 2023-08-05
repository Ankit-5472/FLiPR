import 'package:flutter/material.dart';
import 'package:flipr/constants.dart';
import 'dealerLogin.dart';
import 'Driver/driverLogin.dart';
import 'authDri.dart';
import 'dealerSignUp.dart';

class LoginAs extends StatelessWidget {
  const LoginAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child: CircleAvatar(radius: 100.0,backgroundImage: AssetImage('images/FLiPR.png'),),),
              SizedBox(height: 20.0,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>authD()));
              }, child: Text("Continue As Dealer",style: kLabelTextStyle,),),
              SizedBox(height: 20.0,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>driverLogin()));
              }, child: Text("Continue As Driver",style: kLabelTextStyle,),)
            ],
          ),
        ),
      ),
    );
  }
}
