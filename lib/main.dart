import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nav Test',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Nav', style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        color: Colors.green,
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Try to navigate this page',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.green,
        buttonBackgroundColor: Colors.white,
        height: 50,
        items: <Widget>[
          Icon(Icons.account_circle, size: 20, color: Colors.black,),
          Icon(Icons.add_a_photo_outlined, size: 20, color: Colors.black,),
          Icon(Icons.add, size: 20, color: Colors.black,),
          Icon(Icons.add_location, size: 20, color: Colors.black,),
          Icon(Icons.exit_to_app, size: 20, color: Colors.black,),
        ],
        animationDuration: Duration(
            milliseconds: 250
        ),
        animationCurve: Curves.bounceInOut,
        index: 2,
        onTap: (index){
          print('$index');
        },
      ),
    );
  }
}

