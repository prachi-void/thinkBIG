import 'package:flutter/material.dart';
import 'commonComponents.dart';
import 'home_screen.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:appbar(context),
      body: Center(
        child: ListView(
          
          children: <Widget>[
            banner("To me there was magic in learning \n - Michelle Obama","assets/dreams.jpg"),
            tabView()
          ],
        ),
        
      ),
    );
  }
}

tabView(){
  
return Container(

        height:350.0,
        child: DefaultTabController(
          length: 1,

          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Color(0xffffffff),
              flexibleSpace: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[TabBar(
                  isScrollable: true,
                labelColor: Colors.black,
                indicatorColor: Color(0xff5808e5),
                tabs: [
                  Tab(text: 'Featured Courses',),
                ],
              ),],),
              //title:
            ),
            body: TabBarView(
              children: [
                HomeScreen(),
              ],
            ),
          ),
    ),
      );

}