import 'package:flutter/material.dart';
import 'package:risheshwor/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Risheshwor SACCOS',
      theme: ThemeData(
        primarySwatch: Colors.green, 

      ),
      home: MyHomePage(title: 'Risheshwor SACCOS'),
    );
  }
}
