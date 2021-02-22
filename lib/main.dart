import 'package:flutter/material.dart';
import 'package:newsapp/Screens/Login.dart';
import 'package:newsapp/Screens/MainNews.dart';
import 'package:newsapp/Screens/MoreDetails.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'Screens/SplashScreen.dart';


void main () async{
  runApp(new MaterialApp(
    initialRoute: "Splash",

    routes: {

      "Splash": (context) => Splash(),
      "Login": (context) => Login(),
      "Main": (context) => MainNews(),
      "More": (context) => MoreDetails(title: "Fouad", details: "mohammed",)
    }
  ));
}

Future<String> get LocalPath async{
  final path = await getApplicationDocumentsDirectory();
  return path.path;
}

Future<File> get LocalFile async{

  final file= await LocalPath;
  return new File("$file/data.txt");
}

Future<File> WriteData(String value) async{
  final file= await LocalFile;
  return file.writeAsString('$value');
}

Future<String> ReadData() async{

  try{

    final file = await LocalFile;
    final data = await file.readAsString();
      return data;

  }catch(e){
    return "Error: Reading file";
  }

}