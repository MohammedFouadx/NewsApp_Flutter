import 'package:flutter/material.dart';
import 'package:newsapp/main.dart';


class Login extends StatefulWidget  {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Sign in"),
        backgroundColor: Colors.deepPurple,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: mController,
              decoration: InputDecoration(
                labelText: 'Enter your name',
                icon: new Icon(Icons.person,size: 22.0,),
              ),
            ),
            new Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            new RaisedButton(onPressed: (){
              WriteData(mController.text);
              print("Saved");
            },
              child: new Text("Save",style:
              TextStyle(fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[700]),),
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0) ),
            new FutureBuilder(
              future: ReadData(),
                builder:(BuildContext context , AsyncSnapshot<String> data ){
                  if(data.hasData !=null){
                    return new Text("${data.data.toString()}");
                  }else{
                    return new Text("No data");
                  }
                }
            ),

          ],
        ),
      ),
    );
  }
  void read()async{
    var mdata= await ReadData();
  }

}
