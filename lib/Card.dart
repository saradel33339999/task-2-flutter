import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class card extends StatelessWidget {

  String name, mail, phone,position;

  card({this.name, this.mail, this.phone,this.position});

  @override
  Widget build(BuildContext context) {
   
     return Container(
        width: 350.0,
        height: 150.0,

        margin: EdgeInsets.symmetric(vertical: 50.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        
     
        

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://icon-library.com/images/person-icon-outline/person-icon-outline-15.jpg'
                      ),

                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          this.name,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.mail,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                this.mail,
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(CupertinoIcons.phone,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                this.phone,
                                style: TextStyle(fontSize: 15.0),
                              ),

                            ),

                          ],
                        ),
                        Row(children: [
                          Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                          Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                          Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),

                              ),
                          Icon(Icons.local_offer_outlined,color: Colors.white70,),
                          Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                this.position
                                ,style: TextStyle(fontSize: 14.0),
                              ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),
                          ),
                          Icon(CupertinoIcons.delete_solid ,color: Colors.white,),
                    ]
                        ),
                      ],
                    ),
                  ),
                ],
              ),


        
      
    );
  }
}
