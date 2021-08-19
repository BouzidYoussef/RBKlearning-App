import 'package:flutter/material.dart';
import './login_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/Intro';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //NavBar
            Container(
                color: Color(0xffeeeeee),
                height: 112,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 282,
                      height: 57,
                    ),
                    Text(
                      'WHO WE ARE?',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      'COURSES',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      'TRAINERS',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Container(
                      width: 195,
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffcccccc),
                      ),
                      child: Center(
                        child: Text(
                          'Apply Now',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pushNamed(LoginPage.routeName),
                      child: Container(
                        width: 195,
                        height: 57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffe91081),
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    )
                  ],
                )),

            //Background
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/background.jpg',
                    height: 545,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  Text(
                    'You way to succes !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 108,
                    ),
                  ),
                ],
              ),
            ),

            //Trainers
            Container(
              height: 420,
              color: Color(0xffeeeeee),
              child: Row(
                children: [
                  //WALA
                  Image.asset(
                    'assets/images/WALA.PNG',
                    height: 436,
                    width: 467,
                  ),

                  //Texts
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          'Train with the IT elite.',
                          style: TextStyle(color: Colors.black, fontSize: 37),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 198,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffe91081),
                          ),
                          child: Center(
                            child: Text(
                              'Meet our trainers',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 21),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  //DORRA
                  Image.asset(
                    'assets/images/DORRA.PNG',
                    height: 436,
                    width: 467,
                  ),
                ],
              ),
            ),

            //Footer
            Container(
              color: Color(0xff3c3d41),
              height: 223,
            )
          ],
        ),
      ),
    );
  }
}
