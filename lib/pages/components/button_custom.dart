import 'package:elearninapps/component/shared.dart';
import 'package:elearninapps/pages/home_page.dart';
import 'package:flutter/material.dart';

class ButonCustom extends StatelessWidget {
  const ButonCustom({
    Key? key,
    required this.heightApp,
    required this.widthBody,
  }) : super(key: key);

  final double heightApp;
  final double widthBody;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, HomePage.routeName);
      },
      child: Container(
        margin: EdgeInsets.only(top: heightApp * 0.10),
        height: heightApp * 0.07,
        width: widthBody * 0.4,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadiusDirectional.circular(10),
        ),
        child: Center(
            child: Text(
          "LOGIN",
          style:
              blueTextColor.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
