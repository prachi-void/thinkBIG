import 'package:flutter/material.dart';
appbar(context){

   showAlertDialog(BuildContext context) {

}
  return AppBar(
            title: Text("nEma"),
            backgroundColor:Color(0xff5808e5),
            
             actions: <Widget>[
              
          Padding(
            padding: EdgeInsets.only(right: 20.0),
             child: GestureDetector(
        onTap: () {
           showAlertDialog(context);  
        },
        child: Icon(
          
          Icons.logout,
          size: 22.0,
        ),
      )),
        ],
        iconTheme: IconThemeData(
          color:Colors.white,
        ),
  );
}

banner(quote,image){
  return Stack(
    children: [
      Image.asset(image,fit: BoxFit.cover, height: 180.0, width:400.0),
      Center(
        child: Container(
            margin: const EdgeInsets.all(23.0) ,
           padding: const EdgeInsets.all(23.0),
          color: Colors.black54,
          child: Center(
            child: Text(quote,style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.w400,letterSpacing: 1.0)))),
      ),
    ],
  );
}
heading(text){
  return  Container(
    padding: EdgeInsets.all(40.0),
    child: Text(text,style: TextStyle(fontSize: 20.0))
  );
}

button(context,label,route){
  return  RaisedButton(
                        child: Text(label,style: TextStyle(color: Colors.white)),
                        color: Color(0xff5808e5),
                        onPressed: (){
                          Navigator.pushNamed(context, route);
                        },
                      );
}