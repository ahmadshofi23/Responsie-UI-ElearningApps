import 'package:elearninapps/component/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'components/task_card.dart';

class TaskPage extends StatelessWidget {
  static const routeName = "/task-page";
  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;
    final widthApp = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;

    final appBar = AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: blueColor,
          size: 30,
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: whiteColor,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
            color: blueColor,
            size: 30,
          ),
        )
      ],
    );

    final heightBody = heightApp - paddingTop - appBar.preferredSize.height;

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                EdgeInsets.only(left: widthApp * 0.04, top: heightBody * 0.05),
            height: heightBody * 0.2,
            color: whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Les't finish your task!",
                  style: blueTextColor.copyWith(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: heightBody * 0.01),
                Text(
                  "05 November 2020",
                  style: greyTextColor.copyWith(fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            height: heightBody * 0.8,
            padding: EdgeInsets.only(
              top: heightBody * 0.05,
            ),
            decoration: BoxDecoration(
              color: krpimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Recent",
                      style: whiteTextColor.copyWith(fontSize: 20),
                    ),
                    Text(
                      "All",
                      style: greyTextColor.copyWith(fontSize: 20),
                    ),
                    Text(
                      "Complete",
                      style: greyTextColor.copyWith(fontSize: 20),
                    ),
                  ],
                ),
                TaskCard(
                  widthApp: widthApp,
                  heightBody: heightBody,
                  title: "Data Structure",
                ),
                TaskCard(
                  widthApp: widthApp,
                  heightBody: heightBody,
                  title: "Web Programming",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
