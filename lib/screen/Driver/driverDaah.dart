import 'package:flutter/material.dart';
import 'package:flipr/constants.dart';
import 'package:csc_picker/csc_picker.dart';

class driverDash extends StatelessWidget {
  const driverDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("FLiPR"),backgroundColor: Color(0xff01A0C7),),
        body: Container(
          child: Column(
            children: <Widget>[
              Text("Welcome Text",style: kLabelTextStyle,),
              SizedBox(height: 16.0,),
              Text("Enter Three Routes",style: kLabelTextStyle,),
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
              ElevatedButton(onPressed: (){}, child: Text("Add")),
            ],
          ),
        ),
      ),
    );
  }
}
