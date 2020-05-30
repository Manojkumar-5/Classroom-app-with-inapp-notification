import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import 'package:page_transition/page_transition.dart';
import './Student.dart';
import './Dashboard.dart';
import 'package:overlay_support/overlay_support.dart';


class Teacher extends StatefulWidget {
  final String pageTitle;

  Teacher({Key key, this.pageTitle}) : super(key: key);

  @override
  TeacherState createState() => TeacherState();
}

class TeacherState extends State<Teacher> {
  final formkey=GlobalKey<FormState>();
  final scaffoldkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text('Teacher',
            style: TextStyle(
                color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
             
              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: Student()));

            },
            child: Text('Student', style: contrastText),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
        padding: EdgeInsets.only(left: 18, right: 18),
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Welcome ..', style: h3),
                Text('Let\'s get started', style: taglineText),

                SizedBox(height:30.0,),

                 new Container(
                height:100.0,
                width:100.0,

              
       
        child:CircleAvatar(
          backgroundImage: ExactAssetImage('images/t.png'),
          radius:55,
        ),
      
      
        ),
              Form(
              key:formkey,
              child: Column(
                  children: <Widget>[
                     TextFormField(
                       validator: (value){
                         if (value.isEmpty) {
                           return "Please enter the username";
                         }
                         else if(value.length>12)
                         {
                           return "username should not exceed 12 characters";
                         }
                       },
              decoration: InputDecoration(
                icon:Icon(Icons.account_circle,color:Colors.black),
                hintText: "Username",hintStyle:h5,
              ),
            ),
            SizedBox(height:10.0,),
          
          
            
            
             TextFormField(
                       validator: (value){
                         if (value.isEmpty) {
                           return "Please enter Email Address";
                         }
                         else if(!value.contains("@"))
                         {
                           return "Enter a valid Email address";
                         }
                       },
              decoration: InputDecoration(
                icon:Icon(Icons.mail,color:Colors.black),
                hintText: "Email Address",hintStyle: h5,
              ),
            ),


            SizedBox(height:10.0,),

            TextFormField(   
              validator: (value){
                         if (value.isEmpty) {
                           return "Please enter the Password";
                         }
                         else if(value.length<8)
                         {
                           return "Create a Strong password";
                         }
                       },

              decoration: InputDecoration(
                icon:Icon(Icons.lock,color:Colors.black),
                hintText: "Password",hintStyle: h5,
              ),
            ),

            SizedBox(height:10.0,),

          
                  ],
              ),
            ),
           
            SizedBox(
              height:20.0,
            ),
            
            Container(
              
              child:ButtonTheme(
                      buttonColor:Colors.blueAccent,
                      height:50.0,
                      minWidth: 200,

                      child:RaisedButton(
                        onPressed: (){
                          if(formkey.currentState.validate()){


                            showSimpleNotification(
    Text("Login As a Teacher"),
    background: Colors.blueAccent,
    autoDismiss: false,
    trailing: Builder(builder: (context) {
      return FlatButton(
          textColor: Colors.yellow,
          onPressed: () {
            OverlaySupportEntry.of(context).dismiss();
          },
          child: Text('Dismiss'));
    }),
  );
                           
                           
                            Navigator.pushReplacement(context,MaterialPageRoute(
                                  builder: (context) =>Dashboard()
                            ));
                          }
                          
                        },
                        child:Text("Login",style: TextStyle(
                              color: Colors.white,
                                  fontSize: 18,
                            fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins'),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        
                      ),
              ),
            ),
              ],
            ),
            Positioned(
              bottom: 37,
              right: -15,
              child: FlatButton(
                onPressed: () {
                    Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: Dashboard()));
                },
                color: primaryColor,
                padding: EdgeInsets.all(13),
               shape: CircleBorder(),
                child: Icon(Icons.arrow_forward, color: white),
              ),
            )
          ],
        ),
        height: 600,
        
        width: double.infinity,
        decoration: authPlateDecoration,
      ),
        ],
      )
    );
  }
}
