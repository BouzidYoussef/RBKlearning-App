import 'package:flutter/material.dart';
import 'package:rbklearning_app/home_page.dart';
import 'package:rbklearning_app/main_page.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/Login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(HomePage.routeName),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/best1.png',
                      width: 200,
                      height: 200,
                    ),
                    Image.asset(
                      'assets/images/best2.png',
                      width: 250,
                      height: 200,
                    )
                  ],
                ),
              ],
            ),
            Container(
                padding: const EdgeInsets.only(top: 17),
                width: 420,
                height: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  children: [
                    //Email
                    Container(
                      width: 400,
                      height: 78,
                      child: TextField(
                        cursorColor: Color(0xff334347),
                        style: TextStyle(color: Color(0XFF334347)),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Color(0xff334347)),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0XFF334347), width: 2.0),
                          ),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    //Password
                    Container(
                      width: 400,
                      height: 78,
                      child: TextField(
                        style: TextStyle(color: Color(0XFF334347)),
                        cursorColor: Color(0xff334347),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Color(0xff334347)),
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(color: Color(0xff334347)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0XFF334347), width: 2.0),
                          ),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    //Login
                    TextButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed(MainPage.routeName),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                backgroundColor: Color(0xffe91081),
                                primary: Colors.white,
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(MainPage.routeName),
                            child: Text(
                              'Log In',
                            )),
                      ),
                    ),
                    Container(
                      height: 120,
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //ForgetPassword
                          Text(
                            'Forget Password?',
                            style: TextStyle(
                                color: Color(0xffe91081),
                                fontWeight: FontWeight.bold),
                          ),
                          //Divider
                          Divider(
                            indent: 50,
                            endIndent: 50,
                          ),
                          //Apply
                          TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushNamed(HomePage.routeName),
                            child: Container(
                              height: 40,
                              width: 100,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      backgroundColor: Color(0xffcccccc),
                                      primary: Colors.white,
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed(HomePage.routeName),
                                  child: Text(
                                    'Apply Now',
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
