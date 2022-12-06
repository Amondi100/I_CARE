import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_care/screens/diary.dart';
import 'package:i_care/screens/list_of_therapists.dart';
import 'package:i_care/screens/resources.dart';
import 'package:i_care/utils/app_const.dart';

import '../widgets/dashboard_widget.dart';
import 'community.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            'Schedule an appointment',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search location or speciality',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                suffixIcon: Icon(
                  Icons.search,
                  color: AppConst.primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            height: Get.height,
            color: Color.fromRGBO(241, 245, 255, 1),
            // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListView(
              children: [
                //first row
                Row(
                  children: [
                    //first item
                    Expanded(
                      child: Dashboard3Card(
                        img: "images/appointments.jpg",
                        title: "Appointments",
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
                      img: "images/doctor.jpg",
                      title: "Ask a doctor",
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
        ]),
      ),
    );
  }
}
