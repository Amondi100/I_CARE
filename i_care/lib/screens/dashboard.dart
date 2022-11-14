import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_care/utils/app_const.dart';

class Dasboard extends StatelessWidget {
  const Dasboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: <Widget>[
            Container(
              height: 130.0,
              color: AppConst.primaryColor,
            ),
            Positioned(
              top: 100,
              child: Container(
                height: Get.height - 100.0,
                decoration: BoxDecoration(color: Colors.white),
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Card(
                          child: Column(),
                        )
                      ],
                    ),
                    color: Colors.white,
                    padding: EdgeInsets.all(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
