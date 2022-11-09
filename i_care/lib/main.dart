import 'package:flutter/material.dart';
import 'package:i_care/screens/intro.dart';
import 'package:i_care/utils/app_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppConst.pri,
      ),
      home: const IntroPage(),
    );
  }
}
