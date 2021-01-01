

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'CourseMaterial.dart';
class EnrollPage extends StatefulWidget {
  String CourseTitle;
  EnrollPage(this.CourseTitle);


  @override
  _EnrollPageState createState() => _EnrollPageState(CourseTitle);
}

class _EnrollPageState extends State<EnrollPage> {
  final formkey=new GlobalKey<FormState>();
  String myValue;

  String CourseTitle;
  _EnrollPageState(this.CourseTitle);

  TextEditingController fullname=TextEditingController();
  String FullName,Email;
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomPadding: false,

      body: Container(

        padding: EdgeInsets.fromLTRB(40.0, 140.0, 40.0, 0.0),
        color: Colors.black12,

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            Center(child: Text('Enrollment',style: TextStyle(color: Color(0xff5808e5),fontSize:35.0, fontWeight: FontWeight.w600),)),
      new Form(
        key: formkey,
        child: Column
          (
          children: <Widget>
          [
            SizedBox(height:40),
            TextFormField(
              controller: emailController,
              decoration: new InputDecoration(labelText: 'Email-id')
              ,

              validator: (value)
              {
                return value.isEmpty ? 'Email is required' :null;
              }
              ,
              onSaved: (value)
              {
                return myValue=value;
              }
              ,
            ),
            TextFormField(
              controller: fullname,
              decoration: new InputDecoration(labelText: 'Full Name'),
              validator: (value)
              {
                return value.isEmpty ? 'Name is required' :null;
              }
              ,),
            SizedBox(height:30),
            RaisedButton(
              elevation: 13.0,

              child: Text('Enroll',style:TextStyle(color: Colors.white)),
              color: Color(0xff5808e5).withOpacity(0.8),
              onPressed: goToHomePage,

            )
          ],)),]
        ),)

      );






  }

  void goToHomePage()
  {
    FullName=fullname.text;
    Email=emailController.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return new CourseMaterial(CourseTitle, FullName,Email);
        }
        ));
  }









}
