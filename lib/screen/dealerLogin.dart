import 'package:flutter/material.dart';
import 'dealerSignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dealerDashB.dart';
import 'package:email_auth/email_auth.dart';
import 'dealerSignUp.dart';


class dealerLogin extends StatefulWidget {
  @override
  _dealerLoginState createState() => _dealerLoginState();
}

class _dealerLoginState extends State<dealerLogin> {
  bool isLoding = false;
  final _fromKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _otp = TextEditingController();

  EmailAuth emailAuth =  new EmailAuth(sessionName: "Sample session");

  void sendOtp() async {
    bool result = await emailAuth.sendOtp(
        recipientMail: _email.value.text, otpLength: 5
    );
  }
  void verify() {
    print(emailAuth.validateOtp(
        recipientMail: _email.value.text,
        userOtp: _otp.value.text));
  }


  @override
  Widget build(BuildContext context) {

    final createAc = TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>dsignUp()));}, child: Text("Create New Account",
      style: TextStyle(fontSize: 20.0,
        color:Color(0xff01A0C7),
      ),),);

    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height / 1.5,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _fromKey,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  child: Image.asset(
                    "images/Dealer.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 48.0),
              TextFormField(
                controller: _email,
                validator: (text){
                  if(text==null || text.isEmpty){
                    return 'Email is empty';
                  }
                  return null;
                },
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Email",
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
              ),
                SizedBox(height: 10.0,),
                ElevatedButton(onPressed: () =>sendOtp(), child: Text("Send OTP"),),
                SizedBox(height: 10.0),
            TextFormField(
              controller: _otp,
              validator: (text){
                if(text==null || text.isEmpty){
                  return 'Email is empty';
                }
                return null;
              },
              obscureText: true,
              style: TextStyle(fontSize: 20.0),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "OTP",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
            ),
                SizedBox(
                  height: 36.0,
                ),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xff01A0C7),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                  if(_fromKey.currentState!.validate()){
                    dealerDash();
                  }
                },
                child:isLoding? const CircularProgressIndicator() : Text("Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
                SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  height: 16.0,
                ),
                createAc,
              ],
            ),
          ),
          ),
      ),
    );
  }
}