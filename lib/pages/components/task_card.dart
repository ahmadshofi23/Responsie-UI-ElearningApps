import 'package:elearninapps/component/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
    required this.title,
    required this.widthApp,
    required this.heightBody,
  }) : super(key: key);

  final double widthApp;
  final String title;
  final double heightBody;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: widthApp * 0.1,
        right: widthApp * 0.08,
      ),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: whiteColor,
      ))),
      padding:
          EdgeInsets.only(top: heightBody * 0.05, bottom: heightBody * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/folder.svg",
                    height: 50,
                  ),
                  SizedBox(width: widthApp * 0.14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: whiteTextColor.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Deadline - Nov 08, 2020",
                        style: greyTextColor,
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.more_vert_outlined,
                color: whiteColor,
              )
            ],
          ),
          SizedBox(height: heightBody * 0.04),
          LinearPercentIndicator(
            animation: true,
            lineHeight: 10,
            animationDuration: 2500,
            percent: 0.8,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: whiteColor,
            backgroundColor: whiteColor.withOpacity(0.2),
          ),
          SizedBox(height: heightBody * 0.02),
          Text(
            "On progress - 60% Done",
            style: whiteTextColor.copyWith(color: whiteColor.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }
}
