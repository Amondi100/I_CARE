import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_care/utils/app_const.dart';

import '../widgets/dashboard_widget.dart';

class Resources extends StatelessWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConst.primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Text(
              'INFORMATION',
              style: TextStyle(
                  color: AppConst.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: Get.width,
              child: Dashboard3Card(
                img: "images/mental-health.jpg",
                title: "Make Appointment",
                onClicked: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Resources()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
