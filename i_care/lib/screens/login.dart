import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_care/screens/dashboard.dart';
import 'package:i_care/screens/sign_up.dart';
import 'package:i_care/utils/app_const.dart';
import 'package:i_care/utils/utils.dart';

import '../controllers/auth_controller.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // backgroundColor: AppConst.primaryColor,
      // title: Text(
      // "FORTITUDE",
      // style: TextStyle(
      // fontSize: 32,
      // fontWeight: FontWeight.bold,
      // fontStyle: FontStyle.italic),
      // ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('images/whiteheart.jpg')),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
                controller: _emailController,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
                controller: _passwordController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppConst.primaryColor,
                  minimumSize: Size.fromHeight(50)),
              onPressed: () async {
                if (_emailController.text.trim().isEmpty ||
                    !_emailController.text.trim().isEmail) {
                  Utils.showError("Please Enter valid email!");
                } else if (_passwordController.text.trim().isEmpty) {
                  Utils.showError("No field should be empty!");
                } else {
                  await AuthController.to.login(_emailController.text.trim(),
                      _passwordController.text.trim());
                }
              },
              child: const Text("Login"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text.rich(
                // ignore: prefer_const_literals_to_create_immutables
                TextSpan(
                    text: 'Don\'t have an account? ',
                    children: <InlineSpan>[
                  TextSpan(
                      text: 'Sign Up',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppConst.primaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => SignUp());
                        })
                ])),
          ],
        ),
      ),
    );
  }
}
