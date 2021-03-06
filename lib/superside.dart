import 'package:flutter/material.dart';
import 'package:salma1/email.dart';
import 'package:salma1/supervisor_createreport.dart';

import 'ListReports.dart';
import 'about.dart';
import 'homepage.dart';


class superside extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 70,),
        children: <Widget>[
          Divider(
            color: Colors.black26,
            thickness: 8.0,
            indent: 9.0,
            endIndent: 9.0,



          ),

          Padding(padding:EdgeInsets.only(top:35, right: 40.0, left: 40.0 ), child: FlatButton(
              padding: EdgeInsets.all(15.0),
              color: Colors.black26,
              child: Text("Home", style: TextStyle(
                  color: Colors.black,fontFamily: "gorgeia"
              ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
                //side: BorderSide(color: Colors.red)
              ),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => homepage()
                )
                );
              }
          ),
          ),

          Padding(padding:EdgeInsets.only(top:15, right: 40.0, left: 40.0 ), child: FlatButton(
            padding: EdgeInsets.all(15.0),
            color: Colors.black26,
            child: Text("Create Report", style: TextStyle(
                color: Colors.black,fontFamily: "gorgeia"
            ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
              //side: BorderSide(color: Colors.red)
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, _, __) {
                    return supervisor_createreport();
                  },
                ),
              );
            },
          ),
          ),


          Padding(padding:EdgeInsets.only(top:15, bottom: 15.0, right: 40.0, left: 40.0 ), child: FlatButton(
            padding: EdgeInsets.all(15.0),
            color: Colors.black26,
            child: Text("List report", style: TextStyle(
                color: Colors.black,fontFamily: "gorgeia"
            ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
              //side: BorderSide(color: Colors.red)
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, _, __) {
                    return ListReport();
                  },
                ),
              );
            },
          ),
          ),



          Padding(padding:EdgeInsets.only(top:15,  right: 40.0, left:40.0), child: FlatButton(
            padding: EdgeInsets.all(15.0),
            color: Colors.black26,

            child: Text("Send Us A Mail", style: TextStyle(
                color: Colors.black, fontFamily: "gorgeia"

            ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
              //side: BorderSide(color: Colors.red)
            ),

            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, _, __) {
                    return email();
                  },
                ),
              );
            },

          ),
          ),
          Padding(padding:EdgeInsets.only(top:20, bottom: 15.0, right: 40.0, left: 40.0), child: FlatButton(
            padding: EdgeInsets.all(15.0),
            color: Colors.black26,

            child: Text("About Us", style: TextStyle(
                color: Colors.black, fontFamily: "gorgeia"

            ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
              //side: BorderSide(color: Colors.red)
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, _, __) {
                    return about();
                  },
                ),
              );
            },

          ),
          ),

          Padding(padding:EdgeInsets.only( bottom: 15.0, right:40.0, left: 40.0), child: FlatButton(


            padding: EdgeInsets.all(15.0),
            color: Colors.black26,
            child: Text("log Out", style: TextStyle(
                color: Colors.black,fontFamily: "gorgeia"
            ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
              //side: BorderSide(color: Colors.red)
            ),
            onPressed:(){},

          ),
          ),
        ],
      ),
    );

  }
}

