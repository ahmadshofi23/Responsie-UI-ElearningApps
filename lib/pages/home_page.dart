import 'package:elearninapps/component/shared.dart';
import 'package:elearninapps/pages/task_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home-page";

  @override
  Widget build(BuildContext context) {
    final heightAPP = MediaQuery.of(context).size.height;
    final widthBody = MediaQuery.of(context).size.width;
    final heighBody = heightAPP - MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Container(
            height: heighBody * 0.49,
            decoration: BoxDecoration(
              color: krpimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: heighBody * 0.09,
                left: widthBody * 0.07,
                right: widthBody * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 40,
                      color: whiteColor,
                    ),
                    Spacer(),
                    Image.asset("assets/images/profile.png"),
                  ],
                ),
                SizedBox(height: heighBody * 0.01),
                Text(
                  "Welcome,\nSindi Aristhy",
                  style: whiteTextColor.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                SizedBox(height: heighBody * 0.08),
                Text(
                  "10118232234",
                  style: whiteTextColor.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Visual Communication Design",
                  style: whiteTextColor.copyWith(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: widthBody * 0.1,
                right: widthBody * 0.1,
                top: heighBody * 0.45),
            height: heighBody * 0.1,
            width: widthBody * 0.8,
            // decoration: BoxDecoration(
            //   color: Colors.red,
            // ),
            child: TextField(
              style: blackTextColor,
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: greyTextColor,
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: heighBody * 0.55),
            padding:
                EdgeInsets.only(left: widthBody * 0.1, right: widthBody * 0.1),
            height: heighBody * 0.5,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "What would you learn today?",
                  style: greyTextColor.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: heighBody * 0.02),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: EdgeInsets.only(top: heighBody * 0.03),
                        height: heighBody * 0.2,
                        width: 400,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/profile.png"),
                            SizedBox(height: heighBody * 0.02),
                            Text(
                              "Attendace",
                              style: blueTextColor.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: widthBody * 0.1),
                    Flexible(
                      fit: FlexFit.tight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, TaskPage.routeName);
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: heighBody * 0.03),
                          height: heighBody * 0.2,
                          width: 400,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/images/profile.png"),
                              SizedBox(height: heighBody * 0.02),
                              Text(
                                "Task",
                                style: blueTextColor.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: EdgeInsets.only(top: heighBody * 0.03),
                          height: heighBody * 0.2,
                          width: 400,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/images/profile.png"),
                              SizedBox(height: heighBody * 0.02),
                              Text(
                                "Materials",
                                style: blueTextColor.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: widthBody * 0.1),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: EdgeInsets.only(top: heighBody * 0.03),
                          height: heighBody * 0.2,
                          width: 400,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/images/profile.png"),
                              SizedBox(height: heighBody * 0.02),
                              Text(
                                "Library",
                                style: blueTextColor.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
