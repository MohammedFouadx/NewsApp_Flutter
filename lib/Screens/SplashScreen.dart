import 'dart:async';

import 'package:flutter/material.dart';



class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5),(){

      Navigator.pushReplacementNamed(context, "Main");

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new Stack(
        fit: StackFit.expand,

        children: <Widget>[
          new Container(
            decoration: BoxDecoration(color:Colors.blue),
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[
              Expanded(
                flex: 2,
                child: new Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: new Icon(
                          Icons.voice_chat,
                          size: 50.0,
                          color: Colors.redAccent,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      new Text('AKHBARAKM',
                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(backgroundColor: Colors.redAccent,),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    new Text('        Be patient \n Loaded New News',style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),)
                  ],
                ),
              )
            ],
          )
        ],
      ),


    );
  }
}
