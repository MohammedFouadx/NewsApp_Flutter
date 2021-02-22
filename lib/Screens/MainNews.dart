import 'package:flutter/material.dart';
import 'package:newsapp/Models/news.dart';
import 'package:newsapp/Screens/MoreDetails.dart';



class MainNews extends StatefulWidget {
  @override
  _MainNewsState createState() => _MainNewsState();
}

class _MainNewsState extends State<MainNews> {

 var ListNews=List<News>();

  get index => null;


 AKHBAR(){

   ListNews.clear();
   
   ListNews.add(News(title: "Samsung S9",details: "Samsung has been develope new Phones this months",
       image: "images/f.png"));

   ListNews.add(News(title: "Samsung S9",details: "Samsung has been develope new Phones this months",
       image: "images/ff.png"));

   ListNews.add(News(title: "Samsung S9",details: "Samsung has been develope new Phones this months",
       image: "images/tweet.png"));
   ListNews.add(News(title: "Samsung S9",details: "Samsung has been develope new Phones this months",
       image: "images/ff.png"));
   ListNews.add(News(title: "Samsung S9",details: "Samsung has been develope new Phones this months",
       image: "images/f.png"));
   ListNews.add(News(title: "Samsung S9",details: "Samsung has been develope new Phones this months",
       image: "images/tweet.png"));

   ListNews.add(News(title: "Samsung S9",details: "Samsung has been develope new Phones this months",
       image: "images/tweet.png"));

   ListNews.add(News(title: "Samsung S9",details: "Samsung has been develope new Phones this months",
       image: "images/tweet.png"));

   ListNews.add(News(title: "Samsung S9",details: "Samsung has been develope new Phones this months",
       image: "images/tweet.png"));

 }



  @override
  Widget build(BuildContext context) {
   AKHBAR();
    return Scaffold(
      appBar: new AppBar(
        title: new Text('AKHBARAKM'),
        backgroundColor: Colors.redAccent,
      ),

      drawer: Drawer(
        child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            otherAccountsPictures: <Widget>[
              new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text('m',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              )
            ],
              accountName: new Text('Mohammed Fouad'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,

                child: new Text('M',style: TextStyle(
                  fontSize: 20.0,fontWeight: FontWeight.bold
                ),),
              ),
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              accountEmail: new Text('mohammedfoad.e.n@gmail.com')),
          new ListTile(
            leading: new Icon(Icons.web_asset) ,
            title: new Text('Sports'),
          ),
          new ListTile(
            leading: new Icon(Icons.wallpaper) ,
            title: new Text('Weather'),
          ),
          new ListTile(
            leading: new Icon(Icons.wifi_tethering) ,
            title: new Text('Technology'),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.accessibility) ,
            title: new Text('About Us'),
          ),
          new ListTile(
            leading: new Icon(Icons.share) ,
            title: new Text('Share'),
          ),
          new ListTile(
            leading: new Icon(Icons.rss_feed) ,
            title: new Text('Feedback'),
          ),

          new Divider(),
          
        ],
        ),
      ),
      body: new Container(
        child: ListView.builder(
            itemCount: ListNews.length,
            itemBuilder: (BuildContext bc,index){
                return Card(
                  child:GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder:(BuildContext context){
                            return MoreDetails(
                              title: ListNews[index].title,
                              details: ListNews[index].details,
                              image:ListNews[index].image
                            );
                          }
                        ));
                      },
                    child: Container(
                      padding: EdgeInsets.all(20.0),

                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image(
                                image: AssetImage("${ListNews[index].image}"),
                              ),
                            ),
                            title: new Text("${ListNews[index].title}"),
                            subtitle: new Text("${ListNews[index].details}"),
                            trailing: new Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ),
                  ),

                );

            }

        ),
      ),

    );
  }
}
