import 'package:flutter/material.dart';
import 'package:Classroom/src/screens/Dashboard.dart';
import 'package:overlay_support/overlay_support.dart';
import '../shared/Product.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/partials.dart';
//import '../shared/icons.dart';
//import '../shared/buttons.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';


int count;
var cartlist=new List();
var Assignlist=new List();
var participant=new List();
var stream=new List();


class ProductPage extends StatefulWidget {
  final String pageTitle;
  final Product productData;

  ProductPage({Key key, this.pageTitle, this.productData}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  double _rating = 4;
  int _quantity = 1;
  
  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
            backgroundColor: bgColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: bgColor,
              centerTitle: true,
              leading: BackButton(
                color: darkText,
              ),
              title: Text(widget.productData.name, style: h4),
            ),
            
             
            body: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                          margin: EdgeInsets.only(top: 100, bottom: 100),
                          padding: EdgeInsets.only(top: 100, bottom: 50),
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(widget.productData.name, style: h5),
                              Text( widget.productData.Tname, style: h3),
                               
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 20),
                                child: SmoothStarRating(
                                  allowHalfRating: false,
                                  onRatingChanged: (v) {
                                    setState(() {
                                      _rating = v;
                                    });
                                  },
                                  starCount: 5,
                                  rating: _rating,
                                  size: 27.0,
                                  color: Colors.orange,
                                  borderColor: Colors.orange,
                                ),
                              ),
                             
                            
    
    
                           

                           Container(
                            width:180.0,
                            
                            child: FlatButton(child:Text("Stream",style:TextStyle(color:Colors.white)), onPressed: () {
                                 
                                 
                                 if(stream.length==0)
                                 {
                                 
                                  stream.add("Syllabus");
                                  stream.add("Course Contents");
                                  stream.add("Unit1");
                                  stream.add("Unit2");
                                  stream.add("Unit3");
                                  stream.add("Unit4");
                                 }
                                  streamitem(widget.productData.name);
                                 Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>streams()));
                              },
                              
                              color:Colors.blueAccent,
                            )

                          ),


                           Container(
                            width:180.0,
                            
                            child: FlatButton(child:Text("Add Participants",style:TextStyle(color:Colors.white)), onPressed: () {

if(participant.length==0)
{
      participant.add('Indhu');
      participant.add('Jagadeep');
      participant.add('Janan');
      participant.add('Jeeva');
     participant.add('Jeril');
      participant.add('John');
      participant.add('Joshua');
      participant.add('Jothipriya');
      participant.add('Kabilan.n');
      participant.add('kabilan.s');
      participant.add('kamesh');
      participant.add('kavipriya');
      participant.add('Kiruthika');
      participant.add('Kishore');
      participant.add('Lalith');
      participant.add('madhu');
      participant.add('mani');
      participant.add('manoj');
      participant.add('mathan');
      participant.add('Inam');
      participant.add('Insaf');
      participant.add('Sharoz');
      participant.add('monika');
      participant.add('naga vignesh');
      participant.add('nanila');
      participant.add('naveen');
      participant.add('naveena');
      participant.add('nisha');
      participant.add('Niranjana');
      participant.add('rahul');
      participant.add('raja');
      participant.add('praveen');
      participant.add('Ragu');
          }

                              participantitem("new participant");
                                 Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>participants()));
                              },
                              
                              color:Colors.blueAccent,
                            )

                          ),




                          
                           Container(
                            width:180.0,
                            
                            child: FlatButton(child:Text("Add Assignments",style:TextStyle(color:Colors.white)), onPressed: () {
                                  
                                  if(Assignlist.length==0)
                                  {
                                  Assignitem("C Programming");
                                  Assignitem("Java ");
                                  Assignitem("Web");
                                  Assignitem("FSD");
                                 Assignitem("Python");
                                  }
                                 Assignitem(widget.productData.name);
                                 Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Assignment()));
                              },
                              
                              color:Colors.blueAccent,
                            )

                          ),

                            Container(
                                width: 180,
                                 child: FlatButton(child:Text("Notification",style:TextStyle(color:Colors.white)), onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Payment()));
                                
                               
                                },
                                color:Colors.blueAccent,
                                )
    
                            
                              ),
                          Container(
                            width: 180,
                            child: FlatButton(child:Text("  Add Class  ",style:TextStyle(color:Colors.white)), onPressed: () {
                             CartItem(widget.productData.name);
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>cart()));
                            
                           
                            },
                            color:Colors.blueAccent
                            )
                        

                          ),
                 
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 5,
                                color: Color.fromRGBO(0, 0, 0, .05))
                          ]),
                    ),
                    ),
                    Align(
                        alignment: Alignment.center,
                      child: SizedBox(
                        width: 200,
                        height: 160,
                        child: foodItem(widget.productData,
                            isProductPage: true,
                            onTapped: () {},
                            imgWidth: 250,
                            onLike: () {}),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}





 void CartItem(String item) {
        
        cartlist.add(item);
  }

 
void Assignitem(String item)
{
  Assignlist.add(item);
}


void participantitem(String item)
{
    participant.add(item);
}

void streamitem(String item)
{
    stream.add(item);
}
















Widget header(String name1,Image image, {onPressed}) {
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








class cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


  return  new Scaffold(
    appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Classes'),
        centerTitle: true,
      ),
                 
                    body:new ListView.builder(
                      itemCount:cartlist.length,
              itemBuilder:(context,int index){
            
                return new Dismissible(
                  key:new Key(cartlist[index]),
                  onDismissed: (direction){
                    cartlist.removeAt(index);
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content:new Text('item Dismissed'),
                    ));
                  },
                  background: new Container(color:Colors.red,),
                child:new ListTile(
                  title:new Text("${cartlist[index]}",style: h5,),
                  leading: Image.asset('images/book.png'),
                  subtitle: Text('class'),
                
                )
                );
                
              }
            )
                          
        );

}
}



 class Assignment extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {


  return  new Scaffold(
    appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Assignment'),
        centerTitle: true,
      ),
                 
                
                    body:new ListView.builder(
                      itemCount:Assignlist.length,
                      
              itemBuilder:(context,int index){
            
                return new Dismissible(
                  key:new Key(Assignlist[index]),
                  onDismissed: (direction){
                    Assignlist.removeAt(index);
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content:new Text('item Dismissed'),
                    ));
                  },
                  background: new Container(color:Colors.red,),
                child:new ListTile(
                  title:new Text("${Assignlist[index]}",style: h5,),
                  leading: Image.asset('images/assignment.png'),
                  subtitle: Text('Assignment'),
                  trailing: Text('Jade'),
                
                )
                );
                
              }
            )
                          
        );

}
}









class streams extends StatelessWidget {


 
  @override
  Widget build(BuildContext context) {


  return  new Scaffold(
    appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Streams'),
        centerTitle: true,
      ),
                 
             


                    body:new ListView.builder(
                      itemCount:stream.length,
              itemBuilder:(context,int index){
            
                return new Dismissible(
                  key:new Key(stream[index]),
                  onDismissed: (direction){
                    stream.removeAt(index);
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content:new Text('item Dismissed'),
                    ));
                  },
                  background: new Container(color:Colors.red,),
                child:new ListTile(
                  title:new Text("${stream[index]}",style: h5,),
                  leading: Image.asset('images/document.png'),
                  subtitle: Text('Contents'),
                  trailing: Image.asset('images/stream.png'),
                
                )
                );
                
              }
            )
                          
        );

}
}



class participants extends StatelessWidget {


 
  @override
  Widget build(BuildContext context) {


  return  new Scaffold(
    appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Participants'),
        centerTitle: true,
      ),
                 
             


                    body:new ListView.builder(
                      itemCount:participant.length,
              itemBuilder:(context,int index){
            
                return new Dismissible(
                  key:new Key(participant[index]),
                  onDismissed: (direction){
                    participant.removeAt(index);
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content:new Text('item Dismissed'),
                    ));
                  },
                  background: new Container(color:Colors.red,),
                child:new ListTile(
                  title:new Text("${participant[index]}",style: h5,),
                  leading: Image.asset('images/students.png'),
                  subtitle: Text('Student'),
                )
                );
                
              }
            )
                          
        );

}
}

















class Payment extends StatelessWidget {

  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
          title: 'Notification',
          home: Scaffold(
              backgroundColor: Colors.lightBlueAccent,

            floatingActionButton: FloatingActionButton(
          onPressed: () {
showSimpleNotification(
    Text("Flutter Notification"),
    background: Colors.purpleAccent,
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
    




          },
          ),
          
          ),
      ),
    );
  }

    
}










