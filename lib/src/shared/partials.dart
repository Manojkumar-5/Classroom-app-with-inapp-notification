import 'package:flutter/material.dart';
import '../shared/Product.dart';
import '../shared/colors.dart';
import '../shared/styles.dart';

Widget foodItem(Product sub,
    {double imgWidth, onLike, onTapped, bool isProductPage = false}) {

  return Container(
    width: 380,
    height: 180,
   //  color: Colors.red,
    margin: EdgeInsets.only(left: 20),
    child: Stack(
      children: <Widget>[
        Container(
            width: 380,
            height: 180,

            child: RaisedButton(
                color: Colors.lightBlueAccent,
                elevation: (isProductPage) ? 20 : 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45)),
                onPressed: onTapped,
                child: Hero(
                    transitionOnUserGestures: true,
                    tag: sub.name,
                    child: Image.asset(sub.image,
          
                        width: 380.0,height: 150,)))),
                    


        
       
        Positioned(
          bottom: 0,
          left: 0,
          child: (!isProductPage)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Instructor", style: foodNameText),
                   // Text(sub.Tname, style: priceText),
                  ],
                )
              : Text(' '),
        ),


         Positioned(
          bottom: 0,
          right: 0,
          child: (!isProductPage)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   // Text(sub.name, style: foodNameText),
                    Text(sub.Tname, style: priceText),
                  ],
                )
              : Text(' '),
        ),
       






        Positioned(
            top: 10,
            left: 10,
            child: (sub.completion != null)
                ? Container(
                    padding:
                        EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent[300],
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("Completion : "+sub.completion.toString() + '%',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700)),
                  )
                : SizedBox(width: 0))
      ],
    ),
  );
}
