import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_care/utils/app_const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/whiteheart.jpg"),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(
            // Colors.green.withOpacity(0.4), BlendMode.color),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Center(
              child: Text(
                "Your mental health is a priority. Your happiness is an essential. Your self-care is a necessity",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 51, 33)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('Get Started'),
              textColor: Colors.white,
              color: AppConst.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              elevation: 6,
              padding: EdgeInsets.all(30),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
