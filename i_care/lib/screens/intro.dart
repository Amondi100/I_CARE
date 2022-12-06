import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_care/screens/dashboard.dart';
import 'package:i_care/screens/diary.dart';
import 'package:i_care/screens/login.dart';
import 'package:i_care/screens/sign_up.dart';
import 'package:i_care/screens/splash_screen.dart';
import 'package:i_care/utils/app_const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // backgroundColor: Colors.white,
      // title: Text(
      // "FORTITUDE",
      // style: TextStyle(
      // fontSize: 32,
      // color: AppConst.primaryColor,
      // fontWeight: FontWeight.bold,
      // fontStyle: FontStyle.italic),
      // ),
      // ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: Get.width,
        height: Get.height,
        color: AppConst.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .55,
              height: MediaQuery.of(context).size.height * .55,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/whiteheart.jpg"),
                    fit: BoxFit.contain),
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(10),
              ),
            ),

            Text(
              'FORTITUDE',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  color: Colors.white),
            ),

            SizedBox(
              height: 20,
            ),
            Text(
              'Your Mental Health is a priority. Your happiness is an essetial. Your self-care is a necessity',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),

            //Flatbutton
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignUp()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(color: AppConst.primaryColor, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
