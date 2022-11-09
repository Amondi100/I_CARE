import 'package:flutter/material.dart';
import 'package:i_care/utils/app_const.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.primaryColor,
      appBar: AppBar(
        title: const Text('I_CARE'),
      ),
    );
  }
}
