import 'package:elearninapps/pages/home_page.dart';
import 'package:elearninapps/pages/task_page.dart';
import 'package:flutter/material.dart';

import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        HomePage.routeName: (ctx) => HomePage(),
        TaskPage.routeName: (ctx) => TaskPage(),
      },
    );
  }
}
