import 'package:flutter/material.dart';
import 'mine.dart';

Map clothes = {
  'row1' : {
    'product1' : {
      'name' : "Green T Shirt",
      'price' : "70",
      'imgsrc' : "assets/images/tshirts/t1.png",
    },
    'product2' : {
      'name' : "Godzilla T-Shirt",
      'price' : "85",
      'imgsrc' : "assets/images/tshirts/t2.png",
    },
    'product3' : {
      'name' : "Black T Shirt",
      'price' : "78",
      'imgsrc' : "assets/images/tshirts/t3.png",
    },
    'product4' : {
      'name' : "White T Shirt",
      'price' : "73",
      'imgsrc' : "assets/images/tshirts/t4.png",
    }
  },
};

Widget makeClothesRow(Map x){
  return Container(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(25, 20, 20, 0),
          alignment: Alignment.topLeft,
          child: Text("T Shirt"),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              productItem( clothes[ 'row1'[0][1] ],"129","assets/images/MallLogo.png"),
              productItem("Hatem","156","assets/images/pic1.png"),
              productItem("Youssef","115","assets/images/signupavatar.png"),
              productItem("Menna","485","assets/images/welcomepageimage.png"),
            ],
          ),
        ),

      ],
    ),
  );
}

Widget clothesSection()
{
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
      child: Column(
        children: [

          Container(
            padding: EdgeInsets.fromLTRB(25, 20, 20, 0),
            alignment: Alignment.topLeft,
              child: Text("T Shirt"),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                productItem("Karim","129","assets/images/MallLogo.png"),
                productItem("Hatem","156","assets/images/pic1.png"),
                productItem("Youssef","115","assets/images/signupavatar.png"),
                productItem("Menna","485","assets/images/welcomepageimage.png"),
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                productItem("Karim","129","assets/images/MallLogo.png"),
                productItem("Hatem","156","assets/images/pic1.png"),
                productItem("Youssef","115","assets/images/signupavatar.png"),
                productItem("Menna","485","assets/images/welcomepageimage.png"),
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                productItem("Karim","129","assets/images/MallLogo.png"),
                productItem("Hatem","156","assets/images/pic1.png"),
                productItem("Youssef","115","assets/images/signupavatar.png"),
                productItem("Menna","485","assets/images/welcomepageimage.png"),
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                productItem("Karim","129","assets/images/MallLogo.png"),
                productItem("Hatem","156","assets/images/pic1.png"),
                productItem("Youssef","115","assets/images/signupavatar.png"),
                productItem("Menna","485","assets/images/welcomepageimage.png"),
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                productItem("Karim","129","assets/images/MallLogo.png"),
                productItem("Hatem","156","assets/images/pic1.png"),
                productItem("Youssef","115","assets/images/signupavatar.png"),
                productItem("Menna","485","assets/images/welcomepageimage.png"),
              ],
            ),
          ),


        ],

      ),
    ),
  );

}

