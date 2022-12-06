import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_care/screens/book_appointment.dart';
import 'package:i_care/screens/community.dart';
import 'package:i_care/screens/diary.dart';
import 'package:i_care/screens/resources.dart';
import 'package:i_care/utils/app_const.dart';
import 'package:i_care/widgets/dashboard_widget.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConst.primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1668631625~exp=1668632225~hmac=3da1063eae5a10f6c1294a0b3964f993a9aeb955b2d9bfa4321506053de69107"),
            ),
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            //top text
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Last updated: 2 mins ago",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            //bottom section
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
                            img: "images/make appointment.png",
                            title: "Make Appointment",
                            onClicked: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => BookAppointment()));
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        //first item
                        Expanded(
                            child: Dashboard3Card(
                          img: "images/diary.png",
                          title: "Diary",
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
                          img: "images/resources.png",
                          title: "Resources",
                          onClicked: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Resources()));
                          },
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        //second item
                        Expanded(
                            child: Dashboard3Card(
                          img: "images/community.png",
                          title: "Community",
                          onClicked: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => JoinCommunity()));
                          },
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppConst.primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          //Respond to item press
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Safe Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
          // BottomNavigationBarItem(
          // icon: Icon(Icons.location_on), label: "Places"),
          // BottomNavigationBarItem(
          // icon: Icon(Icons.library_books), label: "News"),
        ],
      ),
    );
  }
}
