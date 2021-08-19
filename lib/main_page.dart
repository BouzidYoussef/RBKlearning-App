import 'package:flutter/material.dart';
import 'package:rbklearning_app/home_page.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/Main';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffeeeeee),
        height: 112,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/bouzid.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Welcome,',
                    style: TextStyle(color: Color(0xffe91081), fontSize: 37),
                  ),
                ),
                Text(
                  'Youssef Bouzid ',
                  style: TextStyle(fontSize: 37),
                ),
              ],
            ),
            Image.asset('assets/images/calendar.png'),
            Image.asset('assets/images/messages.png'),
            Image.asset('assets/images/notification.png'),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(HomePage.routeName),
              child: Image.asset(
                'assets/images/logo.png',
                width: 282,
                height: 57,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
