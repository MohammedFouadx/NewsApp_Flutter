import 'package:flutter/material.dart';

class MoreDetails extends StatefulWidget {

  var title = "";
  var details = "";
  String image;

  MoreDetails({this.title, this.details, this.image});


  @override
  _MoreDetailsState createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('More Details'),
        backgroundColor: Colors.redAccent,
      ),

      body: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image(
              height: 100,
                width: 100,
                image: AssetImage("${widget.image}")),
            new Center(
              child: new Text("${widget.title}"),
            ),
            new Center(
              child:new Text("${widget.details}"),
            )

          ],
        ),
      ),


    );
  }
}
