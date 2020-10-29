import 'package:flutter/material.dart';

Widget productItem(
    String productName, String productPrice, String imageSource) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Container(
          height: 220,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(offset: Offset(5, 5), blurRadius: 5),
            ],
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.blueGrey],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Image.asset(
                          imageSource,
                          width: 100,
                          height: 100,
                        )),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 2),
                        child: Row(
                          children: [
                            Text(
                              productName,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Text(
                        "${productPrice} L.E",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        child: Row(
                          children: [
                            Icon(Icons.local_grocery_store),
                            Text("  BUY NOW"),
                          ],
                        ),
                        color: Colors.indigo,
                        textColor: Colors.white,
                        splashColor: Colors.yellowAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
