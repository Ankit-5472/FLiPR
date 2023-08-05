import 'package:flutter/material.dart';
import 'package:flipr/screen/Driver/driverSignUp.dart';
class driverLogin extends StatelessWidget {
  const driverLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final otp = TextField(
      obscureText: true,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "OTP",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );

    final createAc = TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>driverSign()));}, child: Text("Create New Account",
      style: TextStyle(fontSize: 20.0,
        color:Color(0xff01A0C7),
      ),),);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height / 1.5,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  child: Image.asset(
                    "images/Driver.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 48.0),
                emailField,
                SizedBox(height: 24.0),
                otp,
                SizedBox(
                  height: 36.0,
                ),
                loginButton,
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
