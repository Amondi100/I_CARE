import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_care/screens/dashboard.dart';
import 'package:i_care/screens/intro.dart';
import 'package:i_care/utils/app_const.dart';
import 'package:i_care/widgets/dashboard_widget.dart';

class Diary extends StatelessWidget {
  const Diary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // backgroundColor: AppConst.primaryColor,
      // title: Text(
      // "My Diary",
      // style: TextStyle(
      // fontSize: 32,
      // color: Colors.white,
      // fontWeight: FontWeight.bold,
      // fontStyle: FontStyle.italic),
      // ),
      // ),

      backgroundColor: AppConst.primaryColor,
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(children: [
          Center(
            child: Text(
              'Which emoji best describes how you feel today?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              width: Get.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(241, 245, 255, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(35)),
              ),
              child: ListView(
                children: [
                  //first row
                  Row(
                    children: [
                      //first item
                      Expanded(
                        child: Dashboard3Card(
                          img: "images/happy.png",
                          title: "Happy",
                          onClicked: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => DashBoard()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      //second item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/stressed.png",
                        title: "Stressed",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Diary()));
                        },
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      //third item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/neutral.png",
                        title: "Neutral",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Diary()));
                        },
                      )),
                    ],
                  ),
                  //second row
                  Row(
                    children: [
                      //first item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/scared.png",
                        title: "Scared",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => DashBoard()));
                        },
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      //second item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/sad.jpg",
                        title: "Sad",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => DashBoard()));
                        },
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      //third item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/angry.png",
                        title: "Angry",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Diary()));
                        },
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'What has made you to feel the way you are feeling)?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              width: Get.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(241, 245, 255, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(35)),
              ),
              child: ListView(
                children: [
                  //first row
                  Row(
                    children: [
                      //first item
                      Expanded(
                        child: Dashboard3Card(
                          img: "images/food.jpg",
                          title: "Food",
                          onClicked: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => DashBoard()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      //second item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/education.png",
                        title: "Education",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Diary()));
                        },
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      //third item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/exercise2.jpg",
                        title: "Exercise",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Diary()));
                        },
                      )),
                    ],
                  ),
                  //second row
                  Row(
                    children: [
                      //first item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/family.jpg",
                        title: "Family",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => DashBoard()));
                        },
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      //second item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/friends.jpg",
                        title: "Friends",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => DashBoard()));
                        },
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      //third item
                      Expanded(
                          child: Dashboard3Card(
                        img: "images/relationship.jpg",
                        title: "Relationship",
                        onClicked: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Diary()));
                        },
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Describe how you feel in details',
                  hintText: 'Dont worry just write it down'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Diary()));
              },
              child: Text(
                'Save',
                style: TextStyle(color: AppConst.primaryColor, fontSize: 25),
              ),
            ),
          ),
        ]),
      ),

      //sized box
      //text field- Explain in details
      //sized box
      //button- submit
      //sized box
    );
  }
}
