//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/video_player.dart';
//import 'package:flutter_app/newvid.dart';
import 'allCourseModal.dart';
import 'commonComponents.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CourseMaterial extends StatelessWidget {
  String CourseTitle,FullName,Email;
  CourseMaterial(this.CourseTitle, this.FullName,this.Email);


  void showToast() {
    Fluttertoast.showToast
      (
      msg: FullName+" Welcome to Course "+CourseTitle,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 4,
      backgroundColor: Colors.grey,
      textColor: Colors.black,

    );
  }


  @override
  Widget build(BuildContext context) {
    int id=1;

    final course = AllCourse.fetchByID(id);
    showToast();

    return SafeArea(
        child: Scaffold(

          appBar: appbar(context),
          
          body: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(height: 20.0,),
                    heading(" Course Material for you"),
                    urlCallMethod("Videos",course.videos),
                    urlCallMethod("Notes",course.eBooks),
                    urlCallMethod("Assignments",course.assignments),
                    SizedBox(height: 60.0,),
                    Container(
                      height: 80.0,
                      margin: EdgeInsets.only(left: 25.0,right: 25.0),
                     // color: Colors.black87,
                      child: Text("if you have any query related to your course then please don't hesitate to ask your instructor."
                      ,style: TextStyle(color: Colors.black54,fontSize: 17.0),),
                    ),
                    SizedBox(height: 5.0,),
                    Container(
                      height: 50.0,
                      margin: EdgeInsets.only(left: 25.0,right: 25.0),
                      child: Text("Contact:nemainstructor@gmail.com"
                        ,style: TextStyle(color: Colors.black54,fontSize: 17.0),),
                    ),
                    SizedBox(height: 30.0,),

                  ],
                ),
        ),
    );
  }

}

urlCallMethod(title,material){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal:10.0),
    child: ExpansionTile(
                              title: Text(title, style: TextStyle(fontSize:18.0)) ,
                              
                              children: [

                                 Container(
                    
                                    height:250.0 ,
                                    child: ListView.builder(
                                      
                                      itemCount: material.length,
                                      itemBuilder: (context,index){
                                        
                                        return  Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          
                                          child: ListTile(
                                           // tileColor: Colors.grey[100],
                                            title: Text(material[index].title,style: TextStyle(fontSize:15.0),), 
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(
                                                  builder: (context)=>videoDemo()));
                                            },
                                          
                                          ),
                                        );
                                      }
                                    ),
                                  )
                                
                              ],
                        ),
  ); 
  

}

 