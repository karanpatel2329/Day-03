import 'package:day03/pages/home.dart';
import 'package:day03/widget/animation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  _StarterPageState createState() => _StarterPageState();
}


class _StarterPageState extends State<StarterPage> {
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/starter-image.jpg"),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          padding: EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.3),
              ],
              begin: AlignmentDirectional.bottomCenter,
              end: AlignmentDirectional.topCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(
                flex: 5,
              ),
              FadeAnimation(1.5, Text("Taking Order For Faster Delivery", style: TextStyle(color: Colors.white,fontSize:50, fontWeight: FontWeight.bold),),),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              FadeAnimation(2.0, Text("See restaurant nearby by \nadding your location", style: TextStyle(color: Colors.white38,fontSize:17, ),),),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
              FadeAnimation(2.5, GestureDetector(
                onTap: (){
                  dispose();
                  Navigator.push(context, PageTransition(child: HomePage(), type: PageTransitionType.rightToLeft));
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffffe838),
                          Color(0xffFF9902),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
              ),),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              FadeAnimation(3.0, Center(child: Text("Now Delivery To Your Door 24/7", style: TextStyle(color: Colors.white38,fontSize:17, ),)),),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
