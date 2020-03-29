import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//drawer starts here
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              child: new DrawerHeader(
                child: CircleAvatar(
                  child: Icon(
                    Icons.supervised_user_circle,
                    size: 100.0,
                  ),
                  backgroundColor: Colors.blue,
                ),
              ),
              color: Color(0xFF2e7d32),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(),
            ),
            Divider(),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    color: Color(0xFF2e7d32),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                height: MediaQuery.of(context).size.height * 0.25),
            //Above card
            SizedBox(
              height: 275,
              width: double.infinity,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 20.0,
                  margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 100.0),
                  child: Carousel(
                    
                    images: [
                      NetworkImage(
                          'http://risheshworgroup.com/wp-content/uploads/2018/06/IMG_0058.jpg'),
                      NetworkImage(
                          'http://risheshworgroup.com/wp-content/uploads/2018/06/IMG_0058.jpg'),
                      NetworkImage(
                          'http://risheshworgroup.com/wp-content/uploads/2018/06/IMG_0064.jpg'),
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.lightGreenAccent,
                    indicatorBgPadding: 5.0,
                    dotBgColor: Colors.purple.withOpacity(0.5),
                    borderRadius: true,
                    radius: Radius.circular(15),
                    defaultImage: true,
                    
                  )),
            ),
            // Positioned to take only AppBar size
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: AppBar(
                // Add AppBar here only
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                title: Text("Risheshowr SACCOS"),
              ),
            ),
          ]),
          SizedBox(
            width: double.infinity,
            height: 350,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                child: GridView.count(
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                        child: CircleAvatar(
                      child: Icon(Icons.account_circle),
                    )),
                    Container(
                        child: CircleAvatar(
                      child: Icon(Icons.account_circle),
                    )),
                    Container(
                        child: CircleAvatar(
                      child: Icon(Icons.account_circle),
                    )),
                    Container(
                        child: CircleAvatar(
                      child: Icon(Icons.account_circle),
                    )),
                    Container(
                        child: CircleAvatar(
                      child: Icon(Icons.account_circle),
                    )),
                    Container(
                        child: CircleAvatar(
                      child: Icon(Icons.account_circle),
                    )),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
