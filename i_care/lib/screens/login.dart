import 'package:flutter/material.dart';
import 'package:i_care/utils/app_const.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(title: Text('Adventure'), actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
          ),
          color: AppConst.primaryColor,
        )
      ]),
    );
  }
}
