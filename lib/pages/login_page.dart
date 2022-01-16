import 'package:elearninapps/component/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/button_custom.dart';
import 'components/textfieldcustom.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;
    final widthBody = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: krpimaryColor.withOpacity(0.9),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: heightApp * 0.1),
                width: widthBody * 0.3,
                height: heightApp * 0.3,
                child: SvgPicture.asset("assets/images/teacher.svg"),
              ),
            ),
            SizedBox(height: 2),
            Text(
              "airLearnig",
              style: whiteTextColor.copyWith(
                  fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: heightApp * 0.10),
              child: Column(
                children: [
                  TextFieldCustom(),
                  SizedBox(height: 5),
                  TextFieldCustom(),
                ],
              ),
            ),
            SizedBox(height: heightApp * 0.02),
            Container(
              margin: EdgeInsets.only(left: widthBody * 0.27),
              child: Text(
                "Forgot Password?",
                style: whiteTextColor.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            ButonCustom(heightApp: heightApp, widthBody: widthBody),
          ],
        ),
      ),
    );
  }
}
