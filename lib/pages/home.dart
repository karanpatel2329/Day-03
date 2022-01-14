// @dart=2.9
import 'package:day03/widget/animation.dart';
import 'package:day03/widget/listCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selected = "Pizza";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeAnimation(1.5, Icon(
                      Icons.shopping_bag,
                      size: 30,
                    ))
                  ],
                ),
                FadeAnimation(2, Text(
                  "Food Delivery",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(2.5, ListCategory()),
                SizedBox(
                  height: 20,
                ),
               FadeAnimation(3,  Text(
                 "Free Delivery",
                 style: TextStyle(
                     fontSize: 20,
                     color: Colors.black54,
                     fontWeight: FontWeight.w700),
               )),
                SizedBox(
                  height: 20,
                ),
                Expanded(child:FadeAnimation(3.5,ListView(
                  addRepaintBoundaries: false,
                  addAutomaticKeepAlives: false,
                  scrollDirection: Axis.horizontal,
                  children: [
                    FoodItem(
                      name: "Vegetarain Pizza",
                      price: "13.00",
                      image: "assets/images/one.jpg",
                    ),
                    FoodItem(
                      name: "Cheese Pizza",
                      price: "15.00",
                      image: "assets/images/two.jpg",
                    ),
                    FoodItem(
                      name: "Chicken Pizza",
                      price: "20.00",
                      image: "assets/images/three.jpg",
                    )
                  ],
                )),)
              ],
            )),
      ),
    );
  }
}

class FoodItem extends StatefulWidget {
  FoodItem({ this.image, this.name, this.price});
  String name, price, image;
  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      image: DecorationImage(
          image: AssetImage(widget.image), fit: BoxFit.cover)),
      child: Container(
    padding: EdgeInsets.all(20),
    width: MediaQuery.of(context).size.width*0.8,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            !selected
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 35,
                    ))
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 35,
                    )),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\$ " + widget.price,
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              widget.name,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
        )
      ],
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.1)
          ],
          begin: AlignmentDirectional.bottomCenter,
          end: AlignmentDirectional.topCenter),
    ),
      ),
    );
  }
}
