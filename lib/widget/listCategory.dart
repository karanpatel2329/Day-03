import 'package:flutter/material.dart';
class ListCategory extends StatefulWidget {
  @override
  _ListCategoryState createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  String selected = "Pizza";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          selected == "Pizza"
              ? Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                color: Color(0xfffbc02c),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              "Pizza",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
              : GestureDetector(
            onTap: () {
              setState(() {
                selected = "Pizza";
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xfff6f5f5),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text(
                "Pizza",
                style: TextStyle(
                    color: Color(0xffbab9b9),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),
          SizedBox(width: 10,),
          selected == "Burger"
              ? Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                color: Color(0xfffbc02c),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              "Burger",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
              : GestureDetector(
            onTap: () {
              setState(() {
                selected = "Burger";
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xfff6f5f5),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text(
                "Burger",
                style: TextStyle(
                    color: Color(0xffbab9b9),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),
          SizedBox(width: 10,),
          selected == "Chinese"
              ? Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                color: Color(0xfffbc02c),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              "Chinese",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
              : GestureDetector(
            onTap: () {
              setState(() {
                selected = "Chinese";
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xfff6f5f5),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text(
                "Chinese",
                style: TextStyle(
                    color: Color(0xffbab9b9),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),
          SizedBox(width: 10,),
          selected == "Biryani"
              ? Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                color: Color(0xfffbc02c),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              "Biryani",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
              : GestureDetector(
            onTap: () {
              setState(() {
                selected = "Biryani";
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xfff6f5f5),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text(
                "Biryani",
                style: TextStyle(
                    color: Color(0xffbab9b9),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
