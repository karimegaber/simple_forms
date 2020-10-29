import 'package:flutter/material.dart';
import 'mine.dart';
import 'clothesSection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          bottom: TabBar(
            tabs: [

              Tab(
                icon: Icon(Icons.add),
                text: "Home",
              ),

              Tab(
                icon: Icon(Icons.add),
                text: "Clothes",
              ),

              Tab(
                icon: Icon(Icons.add),
                text: "Shoes",
              ),

              Tab(
                icon: Icon(Icons.add),
                text: "Kids",
              ),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            clothesSection(),
            productItem("Hatem","156","assets/images/pic1.png"),
            productItem("Youssef","115","assets/images/signupavatar.png"),
            productItem("Menna","485","assets/images/welcomepageimage.png"),
          ],
        ),
      ),
    );
  }
}
