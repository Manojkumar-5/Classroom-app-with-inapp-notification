import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/buttons.dart';

import 'package:page_transition/page_transition.dart';
import './Student.dart';
import './Teacher.dart';
import 'package:overlay_support/overlay_support.dart';

class HomePage extends StatefulWidget {
  final String pageTitle;

  HomePage({Key key, this.pageTitle}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/welcome.png', width: 400, height: 400),
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 0),
            child: Text('Welcome !', style: logoStyle),
          ),
          Container(
            width: 200,
            margin: EdgeInsets.only(bottom: 0),
            child: FlatBtn('Student', (){ 

               
              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rotate, duration: Duration(seconds: 1),  child: Student()));
            }),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.all(0),
            child: OutlineBtn('Teacher', (){

            
              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rotate, duration: Duration(seconds: 1),  child: Teacher()));
             }),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Text('Language:', style: TextStyle(color: Colors.black)),
                Container(
                  margin: EdgeInsets.only(left: 6),
                  child: Text('English ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
                )
              ],
            ),
          )
        ],
      )),
      backgroundColor: Colors.white,
    );
  }
}
