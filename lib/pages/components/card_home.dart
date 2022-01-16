import 'package:elearninapps/component/shared.dart';
import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  String title;

  CardHome(this.title);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: constraints.maxHeight * 0.2,
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
            ]),
      );
    });
  }
}
