import 'package:flutter/material.dart';
import 'package:flutter_app/homePage.dart';


void main() => runApp(MyApp());



class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'thinkBIG',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:HomePage(),
    );
  }
}

