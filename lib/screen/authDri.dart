import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dealerDashB.dart';
import 'dealerLogin.dart';

class authD extends StatelessWidget {
  const authD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return const CircularProgressIndicator();
          }else{
            if(snapshot.hasData){
              return dealerDash();
            }else{
              return  dealerLogin();
            }
          }
        },
      ),
    );
  }
}
