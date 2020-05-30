

import 'package:flutter/material.dart';
import '../shared/styles.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../shared/colors.dart';
import '../shared/icons.dart';
import './ProductPage.dart';
import '../shared/Product.dart';
import '../shared/partials.dart';

class Dashboard extends StatefulWidget {
  final String pageTitle;

  Dashboard({Key key, this.pageTitle}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _tabs = [
      storeTab(context),
      
      
      

         
         Container(
            child:TableCalendar(
            calendarController: CalendarController(),
          ),
         ),




             Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 25),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text('Google for doubts', style: h4),
                                  margin: EdgeInsets.only(bottom: 15),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                 
                                        new Container(
                                           child: InkWell(
                                          onTap:(){
                         
                                                },
                child:CircleAvatar(
                backgroundImage: ExactAssetImage('images/google.png'),
                  radius:55,
        ),
      ),
                                        ),
                                  
                                  ],
                                )
                              ],
                            ),
                          ),
                        
            new Container(
            height: 100.0,
            width:400.0,
          child:InkWell(
           child:Text("Click here -- to search ",style:h3),
           onTap:() async {
             if(await canLaunch("https://www.google.com")){
               await launch("https://www.google.com");
             }
             else
            {
              new Text("can't launch");
            }
           },
         ),

         ),
             ],
                      ),
                     
                    ),
                    ),
                    Align(
                        alignment: Alignment.center,
                      child: SizedBox(
                        width: 200,
                        height: 160,
                      ),
                    )
                  ],
                ),
              ),
            ),











       Container(
         child:Text('-->Examly presents-Classroom app with inapp notification system\n\n-->Classroom app is for interaction between the students and teachers\n-->Teachers can assign work to students and Students also submit their work througn this application\n-->Each and every event is  displayed through notification',style:h5),
          
        ),
    
    ];

    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>notification()));
            },
            iconSize: 21,
            icon: Icon(Icons.notifications,)
          ),
          backgroundColor: primaryColor,
          title:
              Text('Classroom', style: logoWhiteStyle, textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>search()));
              },
              iconSize: 21,
              icon: Icon(fryo.magnifier),
            ),
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {

                     Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>addProduct()));

              },
              iconSize: 21,
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: _tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.class_),
                title: Text(
                  'Classes',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text(
                  'Calender',
                  style: tabLinkStyle,
                )),
          
            BottomNavigationBarItem(
                icon: Icon(Icons.speaker_notes),
                title: Text(
                  'Google',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(fryo.cog_1),
                title: Text(
                  'about',
                  style: tabLinkStyle,
                ))
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green[600],                                                                                                                                                                                                                                                                                                                                                                                                                            
          onTap: _onItemTapped,
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

Widget storeTab(BuildContext context) {

  // will pick it up from here
  // am to start another template
  List<Product> C= [
    Product(
        name: "C Program",
        image: "images/1.png",
        Tname: "John",
        userLiked: true,
        completion: 75),
  ];
 
 List<Product> java = [
    Product(
        name: "Java Programming",
        image: "images/2.png",
        Tname: "Kavin",
        userLiked: true,
        completion:50),
    
  ];







  List<Product> Python = [
    Product(
        name: "Python",
        image: "images/3.png",
        Tname: "Roy",
        userLiked: true,
        completion:30),

  ];

  List<Product> AI= [
    Product(
        name: "Artificial Intelligence",
        image: "images/4.png",
        Tname: "Jessy",
        userLiked: true,
        completion: 30),
   
  ];

  List<Product> Maths = [
    Product(
        name: "Maths",
        image: "images/5.png",
        Tname: "Nick",
        userLiked: true,
        completion:80),
   
  ];
  List<Product> Web= [
    Product(
        name: "Web Development",
        image: "images/6.png",
        Tname: "Manoj",
        userLiked: true,
        completion: 25),
  ];

  List<Product> FSD= [
      Product(
        name: "Full Stack",
        image: "images/2.png",
        Tname:"Nisha",
        userLiked: true,
        completion: 10),
    
    ];






  return ListView(children: <Widget>[
    headerTopCategories(),
    deals('C Programming', onViewMore: () {}, items: <Widget>[
      foodItem(C[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: C[0],
              );
            },
          ),
        );
      }, onLike: () {},imgWidth: 380),
     
    ]),




    deals('Java', onViewMore: () {}, items: <Widget>[
      foodItem(java[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: java[0],
              );
            },
          ),
        );
      }, onLike: () {},imgWidth: 380),
    ]),







    deals('Python', onViewMore: () {}, items: <Widget>[
      foodItem(Python[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Python[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 380),

    ]),
    deals('Artificial Intelligence', onViewMore: () {}, items: <Widget>[
      foodItem(AI[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: AI[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 380),

    ]),
    deals('Web Development', onViewMore: () {}, items: <Widget>[
      foodItem(Web[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: Web[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 380),
      
    ]),
    deals('Full Stack', onViewMore: () {}, items: <Widget>[
      foodItem(FSD[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: FSD[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 380),

    ])
  ]);
  
}

Widget sectionHeader(String headerTitle, {onViewMore}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 15, top: 10),
        child: Text(headerTitle, style: h4),
      ),
     
    ],
  );
}

// wrap the horizontal listview inside a sizedBox..
Widget headerTopCategories() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      sectionHeader('All Categories', onViewMore: () {}),
      SizedBox(
        height: 130,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            headerCategoryItem('Programming', Image.asset('images/7.png',width:70.0,height: 70.0,), onPressed: () {}),
            headerCategoryItem('FSD',Image.asset('images/8.png',width:70.0,height: 70.0,), onPressed: () {}),
            headerCategoryItem('Web', Image.asset('images/9.png',width:70.0,height: 70.0,), onPressed: () {}),
            headerCategoryItem('Communication', Image.asset('images/10.png',width:70.0,height: 50.0,), onPressed: () {}),
            headerCategoryItem('Sports', Image.asset('images/11.png',width:70.0,height: 70.0,), onPressed: () {}),
          ],
        ),
      )
    ],
  );
}

Widget headerCategoryItem(String name1,Image image, {onPressed}) {
  return Container(
    margin: EdgeInsets.only(left: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 86,
            height: 86,
       

            child: FloatingActionButton(
              shape: CircleBorder(),
              heroTag: name1,
              onPressed: onPressed,

              backgroundColor: white,
             // child: Icon(icon, size: 35, color: Colors.black87),
             child: image,
            )
            
            ),
        Text(name1 + ' ›', style: categoryText)
      ],
    ),
  );
}

Widget deals(String dealTitle, {onViewMore, List<Widget> items}) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        sectionHeader(dealTitle, onViewMore: onViewMore),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: (items != null)
                ? items
                : <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text('No items available at this moment.',
                          style: taglineText),
                    )
                  ],
          ),
        )
      ],
    ),
  );
}





class addProduct extends StatelessWidget {
  String name,Tname;
  final formkey=GlobalKey<FormState>();
  final scaffoldkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('New Class')
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
                Text('Welcome !!', style: h3),
                SizedBox(height:20.0,),
                Text('Lets create a class', style: h5),


                  new Container(
                height:100.0,
                width:100.0,

              
       
        child:CircleAvatar(
          backgroundImage: ExactAssetImage('images/student.png'),
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
                           return "Please enter the class name";
                         }
                       
                       },
              decoration: InputDecoration(
                icon:Icon(Icons.account_circle,color:Colors.black),
                hintText: "Class name",hintStyle:h5,
              ),
            ),
            SizedBox(height:10.0,),
            TextFormField(   
              
              validator: (value){
                         if (value.isEmpty) {
                           return "Please enter Teacher name";
                         }
                        
                       },

              decoration: InputDecoration(
                icon:Icon(Icons.account_box,color:Colors.black),
                hintText: "Teacher name",hintStyle: h5,
              ),
              
            ),

  SizedBox(height:10.0,),

            TextFormField(   
              validator: (value){
                         if (value.isEmpty) {
                           return "Please enter Subject name";
                         }
                       
                       },

              decoration: InputDecoration(
                icon:Icon(Icons.note,color:Colors.black),
                hintText: "Subject name",hintStyle: h5,
              ),
            ),

            SizedBox(height:10.0,),

            
            
          
                  ],
              ),
            ),
           
            SizedBox(
              height:30.0,
            ),
            
            Container(
              
              child:ButtonTheme(
                      buttonColor:Colors.blueAccent,
                      height:50.0,
                      minWidth: 200,

                      child:RaisedButton(
                        onPressed: (){
                          if(formkey.currentState.validate()){
                           
                            Navigator.pushReplacement(context,MaterialPageRoute(
                                  builder: (context) =>Dashboard()
                            ));
                          }
                          
                        },
                        child:Text("Upload",style: TextStyle(
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
              bottom: 55,
              right: -15,
              child: FlatButton(
                onPressed: () {

                   Navigator.pushReplacement(context,MaterialPageRoute(
                                  builder: (context) =>Dashboard()
                            ));
                                },
                color: primaryColor,
                padding: EdgeInsets.all(13),
               shape: CircleBorder(),
                child: Icon(Icons.arrow_forward, color: white),
              ),
            )
          ],
        ),
        height: 650,
        
        width: double.infinity,
        decoration: authPlateDecoration,
      ),
        ],
      )
    );
  }
}



class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

            appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Examly ..'),
        centerTitle: true,
      ),
  
      body: new Container(
        height:700.0,
        width:double.infinity,

      child: new ListView(

        children:<Widget>[

       new Column(
        
        children:<Widget>[


          SizedBox(height:50.0,),

        new Container(

       child:new Text(" Examly Platform",style:h3,),
        ),

      SizedBox(height:20.0,),

 new Container(

       child:InkWell(
           child:CircleAvatar(
          backgroundImage: ExactAssetImage('images/examly.png'),
          radius:55,
        ),
           onTap:() async {
             if(await canLaunch("https://examly.io/")){
               await launch("https://examly.io/");
             }
             else
            {
              new Text("can't launch");
            }
           },
         ),

        ),

        
      SizedBox(height:20.0,),

 new Container(
         child: new Text("Examly",style:h4,),
        ),
        
      SizedBox(height:20.0,),

 new Container(

       child:InkWell(
           child:CircleAvatar(
          backgroundImage: ExactAssetImage('images/platform.png'),
          radius:55,
        ),
           onTap:() async {
             if(await canLaunch("https://www.thestartupinc.com/startup/examly/")){
               await launch("https://www.thestartupinc.com/startup/examly/");
             }
             else
            {
              new Text("can't launch");
            }
           },
         ),

        ),

        
      SizedBox(height:20.0,),

 new Container(

         child: new Text("Examly platform",style:h4,),
        ),


        
      SizedBox(height:20.0,),







        ],


      ),
        ],
      )
      )

      ),
    );
  }
}











class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

          appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Notification'),
        centerTitle: true,
      ),
  
     
      body: new Container(
        height:700.0,
        width:double.infinity,

      child: new ListView(

        children:<Widget>[
  new ListTile(
                  title:new Text("Flutter Notification",style: h5,),
                  leading: Image.asset('images/info.png'),
                  subtitle: Text('Assignment'),
                  trailing: Text('FSD'),
                
                ),

                SizedBox(height: 20.0,),
          
        new ListTile(
                  title:new Text("Flutter Notification",style: h5,),
                  leading: Image.asset('images/info.png'),
                  subtitle: Text('Assignment'),
                  trailing: Text('Java'),
                
                ),
                SizedBox(height: 20.0,),
                
        new ListTile(
                  title:new Text("Flutter Notification",style: h5,),
                  leading: Image.asset('images/info.png'),
                  subtitle: Text('Stream'),
                  trailing: Text('C programming'),
                
                ),
                SizedBox(height: 20.0,),
                
        new ListTile(
                  title:new Text("Flutter Notification",style: h5,),
                  leading: Image.asset('images/info.png'),
                  subtitle: Text('Assignment'),
                  trailing: Text('Python'),
                
                ),
                SizedBox(height: 20.0,),
                
        new ListTile(
                  title:new Text("Flutter Notification",style: h5,),
                  leading: Image.asset('images/info.png'),
                  subtitle: Text('Participant'),
                  trailing: Text('web'),
                
                )


        ],


        
      )
      )

      ),
    );
  }
}







