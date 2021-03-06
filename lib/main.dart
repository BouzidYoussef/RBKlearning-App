import 'package:flutter/material.dart';

import './home_page.dart';
import './login_page.dart';
import './main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        //Navigation
        initialRoute: HomePage.routeName,
        routes: {
          HomePage.routeName: (ctx) => HomePage(),
          LoginPage.routeName: (ctx) => LoginPage(),
          MainPage.routeName: (ctx) => MainPage(),
        });
  }
}
